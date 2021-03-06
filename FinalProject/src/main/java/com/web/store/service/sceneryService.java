package com.web.store.service;

import java.util.List;

import org.springframework.stereotype.Service;


import com.web.store.model.SceneryBean;

public interface sceneryService {
List<SceneryBean> getAllProducts();
public SceneryBean getViewById(int viewid);
public SceneryBean getViewByName(String viewname);
void addScenery(SceneryBean view);
List<SceneryBean>FilterCountryService(String country);
List<SceneryBean>FilterCityService(String city);
List<SceneryBean> FilterCountryCitySceneryDao(String country, String city);
List<String>SelectCountryCitySceneryDao(String country);
List<String> SelectCityDao(String city);
}
