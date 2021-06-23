package teampro;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

	@Autowired
	UserMapper userMapper;
	
	public List<User> getUserList(){
		return userMapper.selectUserList();
		
	}
	public User getUserById(int userNo) {
		return userMapper.selectByUserId(userNo);
	}
	public int deleteUser(int userNo) {
		return userMapper.deleteUserList(userNo);
	}
	
	public User joinUser(User user) {
		
		int affactedRow=userMapper.insertUser(user);
		
		if(affactedRow == 1) {
				return new User(user.getUserNo(),user.getUserId(),user.getPassword(),user.getPasswordCheck(),user.getUserName(),user.getAddress(),
						user.getPhone(),user.getEmail(),user.getBirthDate(),user.getAccountName(),user.getAccountBank(),user.getAccountNum());
		}else {
			return null;
		
		}
	}
	public User updateUser(User user) {
		int affactedRow=userMapper.updateUserList(user);
		if(affactedRow == 1) {
			return new User(user.getUserNo(),user.getUserId(),user.getPassword(),user.getPasswordCheck(),user.getUserName(),user.getAddress(),
					user.getPhone(),user.getEmail(),user.getBirthDate(),user.getAccountName(),user.getAccountBank(),user.getAccountNum());
		}else {
		return null;
	
		}
	
	}
}
