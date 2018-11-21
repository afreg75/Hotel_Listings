package co.grandcircus.hotel_search;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HotelController {
	@Autowired
	HotelDao hotelDao;
	
	@RequestMapping("/home")
	public ModelAndView index() {
		return new ModelAndView("index");
	}
	
	@RequestMapping("/hotel_list")
	public ModelAndView showHotelList() {
		ModelAndView mav = new ModelAndView("hotellist");
			mav.addObject("hotellist", hotelDao.findAll());
			return mav;
		}
	
	@RequestMapping("/city_list")
	public ModelAndView showCity(@RequestParam("city") String city) {
		ModelAndView mav = new ModelAndView("hotellist");
		mav.addObject("hotellist", hotelDao.findByCity(city));
		return mav;
	}


}
