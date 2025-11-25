package booking;

import java.time.LocalDate;
import java.time.LocalTime;

public class TicketBooking {

	private int bookingId;
    private String name;
    private String phoneNumber;
    private String eventName;
    private String eventDate;
    private String eventTime;
    private String ticketType;
    private String noOfTickets;
    
   public TicketBooking(String name, String phoneNumber, String eventName, String eventDate, String eventTime, String ticketType, String noOfTickets) {
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.eventName = eventName;
        this.eventDate = eventDate;
        this.eventTime = eventTime;
        this.ticketType = ticketType;
        this.noOfTickets = noOfTickets;
    }
    public TicketBooking(int bookingId,String name, String phoneNumber, String eventName, String eventDate, String eventTime, String ticketType, String noOfTickets) {
        this.bookingId = bookingId;
    	this.name = name;
        this.phoneNumber = phoneNumber;
        this.eventName = eventName;
        this.eventDate = eventDate;
        this.eventTime = eventTime;
        this.ticketType = ticketType;
        this.noOfTickets = noOfTickets;
    }
    

	//Getters and Setters
    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public String getEventDate() {
        return eventDate;
    }

    public void setEventDate(String eventDate) {
        this.eventDate = eventDate;
    }

    public String getEventTime() {
        return eventTime;
    }

    public void setEventTime(String eventTime) {
        this.eventTime = eventTime;
    }

    public String getTicketType() {
        return ticketType;
    }

    public void setTicketType(String ticketType) {
        this.ticketType = ticketType;
    }

    public String getNoOfTickets() {
        return noOfTickets;
    }

    public void setNoOfTickets(String noOfTickets) {
        this.noOfTickets = noOfTickets;
    }

   // Method to display booking details
    public void displayBookingDetails() {
        System.out.println("Booking ID: " + bookingId);
        System.out.println("Name: " + name);
        System.out.println("Phone Number: " + phoneNumber);
        System.out.println("Event Name: " + eventName);
        System.out.println("Event Date: " + eventDate);
        System.out.println("Event Time: " + eventTime);
        System.out.println("Ticket Type: " + ticketType);
        System.out.println("Number of Tickets: " + noOfTickets); 
    } }
