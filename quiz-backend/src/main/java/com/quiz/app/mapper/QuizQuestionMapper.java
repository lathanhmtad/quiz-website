package com.quiz.app.mapper;

import com.quiz.app.dto.question.QuizQuestionRequest;
import com.quiz.app.dto.question.QuizQuestionResponse;
import com.quiz.app.entity.QuizQuestion;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface QuizQuestionMapper extends GenericMapper<QuizQuestion, QuizQuestionRequest, QuizQuestionResponse> {
}
