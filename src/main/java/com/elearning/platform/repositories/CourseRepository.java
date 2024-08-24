package com.elearning.platform.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.elearning.platform.model.Course;
import com.elearning.platform.model.Tutor;

public interface CourseRepository extends JpaRepository<Course, Long> {

	Course findByCourseName(String name);

	List<Course> findAllByTutor(Tutor tutor);
}
