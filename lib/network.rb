
class Network
  attr_reader :name, :hospitals

  def initialize(name)
    @name = name
    @hospitals = []
  end

  def add_hospital(hospital)
    @hospitals << hospital
  end

  def highest_paid_doctor
    highest_paid = nil
    @hospitals.each do |hospital|
      highest_paid = hospital.doctors.max_by { |doctor| doctor.salary}
    end
    highest_paid
  end

  def doctors_by_hospital
    hospital_doctors = Hash.new { |hash, key| hash[key] = []}
    @hospitals.select do |hospital|
      hospital.doctors.select do |doctor|
        hospital_doctors[hospital] << doctor.name
      end
    end
    hospital_doctors
  end

  def doctors_by_specialty
    doctor_specialties = Hash.new { |hash, key| hash[key] = []}
    @hospitals.select do |hospital|
      hospital.doctors.select do |doctor|
        doctor_specialties[doctor.specialty] << doctor.name
      end
    end
    doctor_specialties
  end

  def average_doctors_salary
    average_pay = []
    @hospitals.each do |hospital|
      hospital.doctors.each do |doctor|
        average_pay << doctor.salary
      end
    end
    average = ((average_pay.sum.to_f) / average_pay.length)
    solution = ('%.2f' % average).to_f
    solution

  end
end
