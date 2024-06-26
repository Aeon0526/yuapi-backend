package com.yupi.springbootinit.model.dto.userinterfaceinfo;

import lombok.Data;

import java.io.Serializable;

/**
 * 创建请求
 *
 * @author Sun
 * @from springboot模板
 */
@Data
public class UserInterfaceInfoAddRequest implements Serializable {

	/**
	 * 调用用户 id
	 */
	private Long userId;

	/**
	 * 接口 id
	 */
	private Long interfaceInfoId;

	/**
	 * 总调用次数
	 */
	private Long totalNum;

	/**
	 * 剩余调用次数
	 */
	private Long leftNum;

}