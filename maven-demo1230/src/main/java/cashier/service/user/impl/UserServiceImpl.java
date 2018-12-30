package cashier.service.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cashier.dao.TbUserMapper;
import cashier.pojo.TbUser;
import cashier.service.user.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private TbUserMapper userMapper;
	
	@Override
	public TbUser findUserById(Long id) {
		return userMapper.selectByPrimaryKey(id);
	}

}
