package controller.meeting;

import model.dao.MeetingDAO;
import model.domain.Meeting;

import java.util.List;

public class ListMeetingsController {
    private MeetingDAO meetingDAO;

    public ListMeetingsController() {
        this.meetingDAO = new MeetingDAO();
    }

    public List<Meeting> findMeetingsByClubId(int clubId) {
        return meetingDAO.findAllByClubId(clubId);
    }
}
