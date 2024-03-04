package com.quiz.app.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@Entity
public class RefreshToken extends BaseEntity {
    @OneToOne
    @JoinColumn(name = "participant_id", referencedColumnName = "id")
    private Participant participant;

    @Column(unique = true)
    private String token;

    private Date expiryDate;
}
