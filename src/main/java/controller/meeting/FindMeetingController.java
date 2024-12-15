package controller.meeting;

import model.dao.MeetingDAO;
import model.domain.Meeting;

public class FindMeetingController {
    private MeetingDAO meetingDAO;

    public FindMeetingController() {
        this.meetingDAO = new MeetingDAO();
    }

    public Meeting findMeetingById(int meetingId) {
        return meetingDAO.findById(meetingId);
    }
}
