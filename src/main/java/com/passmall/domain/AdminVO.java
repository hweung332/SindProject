package com.passmall.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AdminVO {

	// ad_userid, ad_userpw, ad_name, ad_logintime
	private String ad_userid;
	private String ad_userpw;
	private String ad_name;
	private Date ad_logintime;
}
