import com.app.Role
import com.app.User
import com.app.UserRole

class BootStrap {

    def init = { servletContext ->
        if (!User.count()) {
            User user = new User(username: "mohdamir44@gmail.com", password: "igdefault", phoneNumber: '9958123972')
            user.save(flush: true)
            Role role = new Role(authority: "ROLE_ADMIN")
            role.save(flush: true)
            UserRole userRole = new UserRole(user: user, role: role)
            userRole.save(flush: true)
        }
    }
    def destroy = {
    }
}
