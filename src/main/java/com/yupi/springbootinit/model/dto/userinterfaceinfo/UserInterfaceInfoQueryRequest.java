package com.yupi.springbootinit.model.dto.userinterfaceinfo;

import com.yupi.springbootinit.common.PageRequest;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * 查询请求
 *
 * @author Sun
 * @from springboot模板
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class UserInterfaceInfoQueryRequest extends PageRequest implements Serializable {

	/**
	 * 主键
	 */
	private Long id;

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

	/**
	 * 0-正常 1-禁用
	 */
	private Long status;

}