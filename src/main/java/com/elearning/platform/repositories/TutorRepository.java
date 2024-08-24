package com.elearning.platform.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.elearning.platform.model.Tutor;

public interface TutorRepository extends JpaRepository<Tutor, Long> {
}
