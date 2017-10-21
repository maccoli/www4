package com.www2.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;

import com.www2.bean.Chapter;
import com.www2.bean.Course;
import com.www2.bean.Video;
import com.www2.dao.VideoDaoImpl;

public class VideoService {
	public JSONObject queryCouseVideos(List<Chapter> chapters){
		JSONObject object = new JSONObject();
		for (Chapter chapter : chapters) {
			Map<Chapter, List<Video>> map = new HashMap<Chapter, List<Video>>();
			List<Video> videos = new VideoDaoImpl().queryCourseVideo(chapter);
			map.put(chapter, videos);
			object.put(chapter.getName(), map);
		}
		return object;
	}
	public static void main(String[] args) {
		System.out.println(new VideoService().queryCouseVideos(new ChapterService().queryCourseChapter(new Course("1"))));
	}
}
