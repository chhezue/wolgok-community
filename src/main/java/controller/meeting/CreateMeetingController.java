package controller.meeting;

import model.dao.MeetingDAO;
import model.domain.Meeting;

public class CreateMeetingController {
    private MeetingDAO meetingDAO;

    public CreateMeetingController() {
        this.meetingDAO = new MeetingDAO();
    }

    public String createMeeting(Meeting meeting) {
        int result = meetingDAO.create(meeting);
        return result > 0 ? "Meeting created successfully!" : "Failed to create meeting.";
    }
}
