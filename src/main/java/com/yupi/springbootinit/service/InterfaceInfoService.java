package com.yupi.springbootinit.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.yupi.springbootinit.model.entity.InterfaceInfo;

/**
 * @author s1176
 * @description 针对表【interface_info(接口信息)】的数据库操作Service
 * @createDate 2024-04-07 15:39:27
 */
public interface InterfaceInfoService extends IService<InterfaceInfo> {

	void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add);
}
