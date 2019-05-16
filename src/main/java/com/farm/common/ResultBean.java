package com.farm.common;


import com.farm.enumerate.ResultConstantsEnum;

/**
 * 数据返回接口封装类
 *
 * @author TanXin
 */
public class ResultBean {

    /**
     * 返回code
     */
    private Integer retCode;

    /**
     * 返回信息
     */
    private String retMsg;

    /**
     * 返回数据
     */
    private Object data;

    public ResultBean() {
        super();
    }

    public ResultBean(ResultConstantsEnum constants) {
        super();
        this.retCode = constants.getRetCode();
        this.retMsg = constants.getRetMsg();
    }

    public ResultBean(Integer retCode, String retMsg) {
        super();
        this.retCode = retCode;
        this.retMsg = retMsg;
    }

    public Integer getRetCode() {return retCode; }

    public void setRetCode(Integer retCode) { this.retCode = retCode; }

    public String getRetMsg() {
        return retMsg;
    }

    public void setRetMsg(String retMsg) {
        this.retMsg = retMsg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
