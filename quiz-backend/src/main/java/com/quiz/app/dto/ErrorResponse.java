package com.quiz.app.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@Builder
public class ErrorResponse {
    int statusCode;
    Date timestamp;
    String message;
    String description;
}
