package com.farm.controller;

import com.alibaba.fastjson.JSON;
import com.farm.common.ResultBean;
import com.farm.enumerate.ResultConstantsEnum;
import org.slf4j.Logger;


/**
 * 基础controller
 * 所有的controller应继承于它
 *
 * @author
 */
public class BaseController {



    private Logger LOGGER;

    /**
     * 实体复制
     *
     * @param obejct
     * @param clazz
     * @return obejct
     * @author
     */
    protected static <T> T copyTo(Object obejct, Class<T> clazz) {
        return JSON.parseObject(JSON.toJSONString(obejct), clazz);
    }




    /**
     * 获取成功返回结果
     *
     * @param
     * @return
     * @author
     */
    protected ResultBean getSuccessResult() {
        return new ResultBean(ResultConstantsEnum.SUCCESS);
    }

    /**
     * 获取成功返回结果
     *
     * @param data
     * @return
     * @author
     */
    protected ResultBean getSuccessResult(Object data) {
        ResultBean appResult = getSuccessResult();
        appResult.setData(data);
        return appResult;
    }

    /**
     * 成功返回  带数据和提示
     *
     * @param data
     * @return
     */
    protected ResultBean getSuccessResult(Object data, String msg) {
        ResultBean appResult = getSuccessResult();
        appResult.setData(data);
        appResult.setRetMsg(msg);
        return appResult;
    }

    /**
     * 获取失败返回结果
     *
     * @param failMsg
     * @return
     * @author
     */
    protected ResultBean getFailResult(String failMsg) {
        return new ResultBean(ResultConstantsEnum.FAIL.getRetCode(), failMsg);
    }


}
