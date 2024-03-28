package dao;


import entity.*;
import myexception.CarNotFoundException;
import myexception.CustomerNotFoundException;
import myexception.LeaseNotFoundException;
import myexception.PaymentNotFoundException;

import java.util.*;
import java.time.*;

public interface ICarLeaseRepository {
	
	public void addCar(Car car);
	public void removeCar(int carID) throws CarNotFoundException;
	public List<Car> listAvailableCars();
	public List<Car> listRentedCars();
	public Car findCarById(int carID) throws CarNotFoundException;
	public void updateCar(Car car) throws CarNotFoundException; 
	
	
	public void addCustomer(Customer customer);
	public void removeCustomer(int customerID) throws CustomerNotFoundException;
	public List<Customer> listCustomers();
	public Customer findCustomerById(int customerID) throws CustomerNotFoundException;
	public void updateCustomer(Customer customer) throws CustomerNotFoundException; 
	
	public Lease createLease(int leaseID,int customerID,int carID, LocalDate startDate, LocalDate endDate);
	public Lease returnCar(int LeaseID) throws LeaseNotFoundException;
	public List<Lease> listActiveLeases();
	public List<Lease> listLeaseHistory();
	public void calculateTotalCost(int leaseID) throws LeaseNotFoundException; 
	
	
	public void recordPayment(Lease lease, float amount) throws LeaseNotFoundException;
	public Payment retrievePayment(int paymentID) throws PaymentNotFoundException;   
	public void calculateTotalRevenue();
	/**
	 * Create a new lease record
	 * @param leaseID ID of the new lease.
	 * @param customerID ID of customer who is leasing the vehicle.
	 * @param carID Car ID
	 * @param startDate Starting date of lease.
	 * @param endDate end date of lease.
	 */
	Lease LeaseStatus(int leaseID, int customerID, int carID, LocalDate startDate, LocalDate endDate); 
}