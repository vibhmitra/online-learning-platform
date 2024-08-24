package com.elearning.platform.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.elearning.platform.auth.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "enrollment")
public class Enrollment {
	@Id
	@Column(name = "enrollmentId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long enrollmentId;

	@Column(name = "date")
	private LocalDate enrollmentDate;

	@OneToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "userId", nullable = false)
	private User userName;

	@OneToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "courseId", nullable = false)
	private Course course;

	public Enrollment(LocalDate enrollmentDate, User userName, Course course) {
		this.enrollmentDate = enrollmentDate;
		this.userName = userName;
		this.course = course;
	}
}
