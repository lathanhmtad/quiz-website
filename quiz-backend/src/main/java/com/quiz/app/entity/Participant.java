package com.quiz.app.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Participant extends BaseEntity {
    @Column(unique = true)
    private String email;

    @Column(unique = true)
    private String username;

    private String fullName;
    private String password;
    private String role;
    private String avatar;
    private Boolean enabled;
}
