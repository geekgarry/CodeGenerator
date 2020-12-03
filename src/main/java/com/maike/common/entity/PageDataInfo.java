package com.maike.common.entity;

import java.io.Serializable;
import java.util.List;

/**
 * @program: SpringBootCodeGenerator
 * @description: 分页数据对应返回的对象
 * @author: GarryChan
 * @create: 2020-12-03 14:55
 **/
public class PageDataInfo implements Serializable {

    /** 总记录数 */
    private long total;

    /** 列表数据 */
    private List<?> data;

    /** 消息状态码 */
    private int code;

    /** 消息内容 */
    private int msg;

    /**
     * 表格数据对象
     */
    public PageDataInfo(){

    }
    /**
     * 分页
     *
     * @param list 列表数据
     * @param total 总记录数
     */
    public PageDataInfo(List<?> list, int total)
    {
        this.data = list;
        this.total = total;
    }
    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public List<?> getData() {
        return data;
    }

    public void setData(List<?> data) {
        this.data = data;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public int getMsg() {
        return msg;
    }

    public void setMsg(int msg) {
        this.msg = msg;
    }

}
