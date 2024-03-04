package com.quiz.app.repository;

import com.quiz.app.entity.QuizQuestion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface QuizQuestionRepo extends JpaRepository<QuizQuestion, Long>, JpaSpecificationExecutor<QuizQuestion> {
}
