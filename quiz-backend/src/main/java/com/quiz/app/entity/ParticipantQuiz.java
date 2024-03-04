package com.quiz.app.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@Entity
public class ParticipantQuiz extends BaseEntity{
    @ManyToOne
    @JoinColumn(name = "participant_id", referencedColumnName = "id")
    private Participant participant;

    @ManyToOne
    @JoinColumn(name = "quiz_id", referencedColumnName = "id")
    private Quiz quiz;

    private Boolean isFinished;
    private Date timeStart;
    private Date timeEnd;
}
