package com.elearning.platform.auth;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AuthGroupRepository extends JpaRepository<AuthGroup, Long> {
	List<AuthGroup> findByUsername(String username);
}
