package com.example.controller;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.Message;
import com.example.utils.Result;

/** * @message  david:
 * @date 创建时间：2016年5月27日 下午3:12:58
 * @version 1.0
 * @parameter
  * @since 
 * @return 
 */
@RestController
@RequestMapping("/backend/message")
public class MessageController extends BaseController{	
	
	/**
	 * 后台登陆
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public ModelAndView index(){
		ModelAndView mav = new ModelAndView();
		List<Message> list = (List<Message>) messageRep.findAll();
		mav.addObject("messages", list);
		mav.setViewName("backend/message/list");
		return mav;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/updateFlag")
	public Result update(String id){
		Message message = messageRep.findOne(Integer.parseInt(id));
		message.setFlag(true);
		messageRep.save(message);
		return new Result(true, "设置已回复！");		
	}
	
	@ResponseBody
	@RequestMapping(value="/update")
	public Result update(Message message){
		messageRep.save(message);
		return new Result(true, "留言发送成功！");		
	}
	

	
}
