package by.htp.travelserviceWEB.commander.fetchentity;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import by.htp.travelserviceWEB.commander.CommandAction;
import by.htp.travelserviceWEB.entity.City;
import by.htp.travelserviceWEB.entity.Entity;
import by.htp.travelserviceWEB.entity.hotel.Hotel;
import by.htp.travelserviceWEB.entity.hotel.Room;
import by.htp.travelserviceWEB.service.CityService;
import by.htp.travelserviceWEB.service.hotel.RoomService;
import by.htp.travelserviceWEB.service.hotel.impl.RoomServiceImpl;
import by.htp.travelserviceWEB.service.impl.CityServiceImpl;

public class FetchRoomAction implements CommandAction {
	
	private RoomService roomService;
	
	public FetchRoomAction() {
		roomService = RoomServiceImpl.getInstance();
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String page = "jsp/hotel_catalogue_page.jsp";
		
		List<Entity> list = roomService.fillingSelectPickUpRoom(new Room());
		
		Map<Integer, Room> map = new HashMap<Integer, Room>();
		for(Entity entity : list) {
			map.put(((Room)entity).getRoomId(), (Room) entity);
		}
		request.setAttribute("ROOM_MAP", map);
		
		return page;
	}
}
