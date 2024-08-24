package com.elearning.platform.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.elearning.platform.auth.User;
import com.elearning.platform.model.Course;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class EnrollmentDto {
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date date;
	private User user;
	private Course course;
}
