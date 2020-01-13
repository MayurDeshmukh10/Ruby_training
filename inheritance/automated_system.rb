#Base Class
class Person

	protected
	
	def get_personal_details
		puts "Enter your name : "
		@name = gets
		puts "Enter your age : "
		@age = gets
		puts "Enter your gender : "
		@gender = gets
		puts "Enter your Date of Birth : "
		@dob = gets
	end
	
	def show_personal_details
		puts "Personal Details"
		puts
		puts "Name : #{@name}"
		puts "Age : #{@age}"
		puts "Gender : #{@gender}"
		puts "Date of Birth : #{@dob}"
	end
end


#Inherited from Person
class Customer < Person             
	@@customer_id = 0
	
	def initialize
		@@customer_id += 1
	end
	def get_customer_details
		get_personal_details
		puts "Enter Product name : "
		@product_name = gets
		puts "Enter Organization Name : "
		@organization_name = gets
	end

	def show_customer_details
		puts
		puts "Customer ID : #{@@customer_id} "
		show_personal_details
		puts "Customer Details"
		puts
		puts "Organization Name : #{@organization_name} " 
		puts "Product Name : #{@product_name}"
	end
end


#Inherited from Person
class Employee < Person			
	@@employee_id = 0

	def initialize 
		@@employee_id += 1
	end

	def get_employee_details
		get_personal_details
		puts "Enter Work Experience : "
		@work_experience = gets
		puts "Enter your Department : "
		@department = gets
		puts "Enter salary : "
		@salary = gets
		puts "Enter Start Date : "
		@start_date = gets
	end

	def show_employee_details
		puts
		puts "Employee ID : #{@@employee_id} "
		show_personal_details
		puts
		puts "Employee Details"
		puts
		puts "Work Experience : #{@work_experience}"
		puts "Department : #{@department}"
		puts "Salary : #{@salary}"
		puts "Start Date : #{@start_date}"
	end
end


#Inherited From Employee
class Manager < Employee
	@@manager_id = 0

	def initialize
		super()
		@@manager_id += 1
	end

	def get_manager_details
		puts
		get_employee_details
		puts "Enter project Name : "
		@project_name = gets
		puts "Enter Team size : "
		@team_size = gets
	end

	def show_manager_details
		puts
		puts "Manager ID : #{@@manager_id} "
		show_employee_details
		puts
		puts "Manager Details"
		puts
		puts "Project Name : #{@project_name}"
		puts "Team Size : #{@team_size}"
	end
end


customer = Customer.new
customer.get_customer_details
customer.show_customer_details

emp = Employee.new
emp.get_employee_details
emp.show_employee_details

manager = Manager.new
manager.get_manager_details
manager.show_manager_details

