package com.yupi.springbootinit.common;

import lombok.Data;

import java.io.Serializable;

/**
 * 请求 ID
 *
 * @author Sun
 * @from springboot模板
 */
@Data
public class IdRequest implements Serializable {

    /**
     * id
     */
    private Long id;

    private static final long serialVersionUID = 1L;
}