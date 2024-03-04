package com.quiz.app.constants;

public interface PublicApiConstants {
    String AUTH_API_PATH = "/api/v1/auth";
    String[] AUTH_API_PATHS = {
        "/api/v1/auth/login",
            "/api/v1/auth/register",
            "/api/v1/auth/refresh-token"
    };
}
