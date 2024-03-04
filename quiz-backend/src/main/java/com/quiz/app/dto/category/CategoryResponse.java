package com.quiz.app.dto.category;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CategoryResponse {
    private Long id;
    private String name;
    private String image;
    private Boolean enabled;
}
