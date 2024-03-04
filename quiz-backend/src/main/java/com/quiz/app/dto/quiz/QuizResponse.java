package com.quiz.app.dto.quiz;

import com.quiz.app.dto.category.CategoryResponse;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class QuizResponse {
    private Long id;
    private String name;
    private String description;
    private String image;
    private String difficulty;
    private CategoryResponse category;
}
