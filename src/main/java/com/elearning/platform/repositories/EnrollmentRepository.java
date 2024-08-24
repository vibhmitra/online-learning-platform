package com.elearning.platform.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.elearning.platform.auth.User;
import com.elearning.platform.model.Course;
import com.elearning.platform.model.Enrollment;

public interface EnrollmentRepository extends JpaRepository<Enrollment, Long> {

	List<Enrollment> findAllByCourse(Course course);

	List<Enrollment> findAllByUserName(User user);

	Enrollment findByCourseAndUserName(Course course, User user);
}
