package com.example.utils;
/** * @author  david:
 * @date 创建时间：2017年3月27日 下午10:53:05
 * @version 1.0
 * @parameter
  * @since 
 * @return 
 */

import java.io.Serializable;
// TODO: Auto-generated Javadoc

/**
 * ajax 返回对象.
 *
 * @author 
 */
public class Result  implements Serializable{
	
	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -7419113236296271021L;
	
	
	//构造方法
	/**
	 * Instantiates a new result.
	 */
	public Result() {
	}
	
	/**
	 * Instantiates a new result.
	 *
	 * @param success the success
	 */
	public Result(Boolean success) {
		this.success = success;
	}
	
	/**
	 * Instantiates a new result.
	 *
	 * @param success the success
	 * @param returnMsg the return msg
	 */
	public Result(Boolean success, String returnMsg) {
		this.success = success;
		this.returnMsg = returnMsg;
	}	
	
	/**
	 * Instantiates a new result.
	 *
	 * @param success the success
	 * @param returnMsg the return msg
	 * @param data the data
	 */
	public Result(Boolean success, String returnMsg, Object data) {
		super();
		this.success = success;
		this.returnMsg = returnMsg;
		this.data = data;
	}
	//是否成功
	/** The success. */
	private Boolean success;
	//返回消息
	/** The return msg. */
	private String returnMsg;
	//附带数据
	/** The data. */
	private Object data;
	
	/**
	 * Gets the success.
	 *
	 * @return the success
	 */
	public Boolean getSuccess() {
		return success;
	}
	
	/**
	 * Sets the success.
	 *
	 * @param success the success
	 * @return the result
	 */
	public Result setSuccess(Boolean success) {
		this.success = success;
		return this;
	}
	
	/**
	 * Gets the return msg.
	 *
	 * @return the return msg
	 */
	public String getReturnMsg() {
		return returnMsg;
	}
	
	/**
	 * Sets the return msg.
	 *
	 * @param returnMsg the return msg
	 * @return the result
	 */
	public Result setReturnMsg(String returnMsg) {
		this.returnMsg = returnMsg;
		return this;
	}
	
	/**
	 * Gets the data.
	 *
	 * @return the data
	 */
	public Object getData() {
		return data;
	}
	
	/**
	 * Sets the data.
	 *
	 * @param data the data
	 * @return the result
	 */
	public Result setData(Object data) {
		this.data = data;
		return this;
	}	
 }
