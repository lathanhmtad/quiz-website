package com.quiz.app.dto.participant;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class ParticipantResponse {
    private Long id;
    private Date createdDate;
    private Date updatedDate;
    private String username;
    private String email;
    private String fullName;
    private String role;
    private String avatar;
    private Boolean enabled;
}
