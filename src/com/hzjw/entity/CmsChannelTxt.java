package com.hzjw.entity;

import java.io.Serializable;

/**
 * 栏目文本
 * 
 * @author dell
 * 
 */
public class CmsChannelTxt implements Serializable {
	private Integer id;
	private String txt;
	private String txt1;
	private String txt2;
	// 关系
	private CmsChannel channel;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTxt() {
		return txt;
	}

	public void setTxt(String txt) {
		this.txt = txt;
	}

	public String getTxt1() {
		return txt1;
	}

	public void setTxt1(String txt1) {
		this.txt1 = txt1;
	}

	public String getTxt2() {
		return txt2;
	}

	public void setTxt2(String txt2) {
		this.txt2 = txt2;
	}

	public CmsChannel getChannel() {
		return channel;
	}

	public void setChannel(CmsChannel channel) {
		this.channel = channel;
	}
}
