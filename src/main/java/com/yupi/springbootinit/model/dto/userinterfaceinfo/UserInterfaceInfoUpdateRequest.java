package com.yupi.springbootinit.model.dto.userinterfaceinfo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 更新请求
 *
 * @author Sun
 * @from springboot模板
 */
@Data
public class UserInterfaceInfoUpdateRequest implements Serializable {

	/**
	 * 主键
	 */
	private Long id;

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

	/**
	 * 是否删除(0-未删, 1-已删)
	 */
	@TableLogic
	private Integer isDelete;

	private static final long serialVersionUID = 1L;
}