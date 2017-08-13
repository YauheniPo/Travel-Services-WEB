package by.htp.travelserviceWEB.service.auto.impl;

import java.util.List;

import by.htp.travelserviceWEB.dao.auto.SalonDao;
import by.htp.travelserviceWEB.dao.auto.impl.SalonDaoImpl;
import by.htp.travelserviceWEB.entity.Entity;
import by.htp.travelserviceWEB.service.auto.SalonService;

public class SalonServiceImpl implements SalonService {
	
	private SalonDao salonDao;
	{
		salonDao = SalonDaoImpl.getInstance();
	}

	private SalonServiceImpl() {}

	private static class Singletone {
		private static final SalonServiceImpl INSTANCE = new SalonServiceImpl();
	}

	public static SalonServiceImpl getInstance() {
		return Singletone.INSTANCE;
	}

	@Override
	public List<Entity> fillingSelectPickUpSalon(Entity entity) {
		return salonDao.fetchSalonName(entity);
	}
}