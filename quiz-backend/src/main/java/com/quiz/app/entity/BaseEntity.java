package com.quiz.app.entity;

import com.quiz.app.config.security.MyUserDetails;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.Date;

@Getter
@Setter
@MappedSuperclass
public class BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @CreationTimestamp
    @Column(updatable = false)
    private Date createdDate;

    @Column(updatable = false)
    private Long createdBy;

    private Date updatedDate;

    private Long updatedBy;

    @PrePersist
    public void onPersist() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        MyUserDetails userDetails = (MyUserDetails) authentication.getPrincipal();
        this.setCreatedBy(userDetails.getId());
    }

    @PreUpdate
    public void onUpdate() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        MyUserDetails userDetails = (MyUserDetails) authentication.getPrincipal();
        this.setUpdatedBy(userDetails.getId());
    }
}