package controller.meeting;

import model.dao.MeetingDAO;

public class DeleteMeetingController {
    private MeetingDAO meetingDAO;

    public DeleteMeetingController() {
        this.meetingDAO = new MeetingDAO();
    }

    public String deleteMeeting(int meetingId) {
        int result = meetingDAO.delete(meetingId);
        return result > 0 ? "Meeting deleted successfully!" : "Failed to delete meeting.";
    }
}
