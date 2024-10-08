package com.elearning.platform.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "course")
public class Course {

	@Id
	@Column(name = "courseId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long courseId;

	@Column(name = "name", nullable = false, unique = true)
	private String courseName;

	@Column(name = "description")
	private String courseDescription;

	@Column(name = "detail")
	private String courseDetail;

	@Column(name = "difficulty")
	private String courseDifficulty;

	@Column(name = "url")
	private String courseUrl;

	private String imgUrl;

	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "tutorId", nullable = false)
	@OnDelete(action = OnDeleteAction.CASCADE)
	private Tutor tutor;

	public Course(String courseName, String courseDescription, String courseDetail, String courseDifficulty,
			String courseUrl, String imgUrl, Tutor tutor) {
		this.courseName = courseName;
		this.courseDescription = courseDescription;
		this.courseDetail = courseDetail;
		this.courseDifficulty = courseDifficulty;
		this.courseUrl = courseUrl;
		this.imgUrl = imgUrl;
		this.tutor = tutor;
	}
}
