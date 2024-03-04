package com.quiz.app.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class QuizQuestion extends BaseEntity {
        private String description;
        private String image;

        @ManyToOne
        @JoinColumn(name = "quiz_id", referencedColumnName = "id")
        private Quiz quiz;
}
