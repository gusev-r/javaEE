package springproj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import springproj.model.User;
import springproj.service.UserService;

/**
 * Created by Pavel on 01.07.2017.
 */
@Controller
public class MainController {

//    @RequestMapping(value = "/", method = RequestMethod.GET)
//    public String main(Model model){
//        model.addAttribute("testing","It's from main method");
//        return "main";
//    }
@Autowired
private UserService userService;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public String main(Model model){
        model.addAttribute("user",new User());
        model.addAttribute("userList",userService.getAll());
        return "main";
    }

    @RequestMapping(value = "/main/add", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("user")User user){
        if (user.getId()==0){
            userService.addUser(user);
        } else {
            userService.updateUser(user);
        }
        return "redirect:/main";
    }

    @RequestMapping(value = "/edit/{id}")
    public String updateUser(@PathVariable("id")int id, Model model){
        model.addAttribute("user",userService.getById(id));
        model.addAttribute("userList",userService.getAll());
        return "main";
    }

    @RequestMapping(value = "/delete/{id}")
    public String deleteUser(@PathVariable("id") int id){
        userService.delete(id);
        return "redirect:/main";
    }

    @RequestMapping(value = "/search/", method = RequestMethod.POST)
    public String searchUser(@RequestParam("userName")String name, Model model){
        model.addAttribute("searchingUsers",userService.getByName(name));
        return "searching";
    }


}
