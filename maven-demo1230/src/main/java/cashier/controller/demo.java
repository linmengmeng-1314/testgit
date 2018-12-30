package cashier.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cashier.pojo.TbUser;
import cashier.service.user.impl.UserServiceImpl;

@Controller
public class demo {
	/*@Autowired
	private ProductService productService;*/
	
	@Autowired
	private UserServiceImpl userService;
	
	@RequestMapping("/list")
	@ResponseBody
	public TbUser itemsList(HttpServletRequest request, Long id) throws Exception{
		TbUser user = userService.findUserById(id);
		return user;
	}

}
