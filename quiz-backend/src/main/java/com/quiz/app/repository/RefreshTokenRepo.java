package com.quiz.app.repository;

import com.quiz.app.entity.auth.RefreshToken;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface RefreshTokenRepo extends JpaRepository<RefreshToken, Long> {
    Optional<RefreshToken> findRefreshTokenByParticipant_Username(String username);
}
