package com.elearning.platform.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class UserDto {
	private String username;
	private String password;
	private String name;
	private String surname;
	private String email;
	private String imgUrl;
}
