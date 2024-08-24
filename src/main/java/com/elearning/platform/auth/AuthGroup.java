package com.elearning.platform.auth;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
@Entity
@Table(name = "AUTH_USER_GROUP")
public class AuthGroup {
	@Id
	@Column(name = "AUTH_USER_GROUP_ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column(name = "USERNAME")
	private String username;
	@Column(name = "AUTH_GROUP")
	private String authgroup;

	public AuthGroup(String username, String authgroup) {
		this.username = username;
		this.authgroup = authgroup;
	}
}
