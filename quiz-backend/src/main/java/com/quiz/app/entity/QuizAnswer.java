package com.quiz.app.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class QuizAnswer extends BaseEntity {
    private String description;
    private Boolean correctAnswer;

    @ManyToOne
    @JoinColumn(name = "question_id", referencedColumnName = "id")
    private QuizQuestion quizQuestion;
}
