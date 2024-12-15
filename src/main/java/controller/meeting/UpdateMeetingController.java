package controller.meeting;

import model.dao.MeetingDAO;
import model.domain.Meeting;

public class UpdateMeetingController {
    private MeetingDAO meetingDAO;

    public UpdateMeetingController() {
        this.meetingDAO = new MeetingDAO();
    }

    public String updateMeeting(Meeting meeting) {
        int result = meetingDAO.update(meeting);
        return result > 0 ? "Meeting updated successfully!" : "Failed to update meeting.";
    }
}
