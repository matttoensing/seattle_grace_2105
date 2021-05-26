
class Hospital
  attr_reader :name, :chief_of_surgery, :doctors

  def initialize(name, chief_of_surgery, doctors)
    @name = name
    @chief_of_surgery = chief_of_surgery
    @doctors = doctors
  end

  def total_salary
    salary_totals = 0
    @doctors.each do |doctor|
      salary_totals += doctor.salary
    end
    salary_totals
  end

  def lowest_paid_doctor
    lowest_paid = @doctors.min_by { |doctor| doctor.salary}
    lowest_paid.name
  end

  def specialties
    doc_specialties = []
    @doctors.each do |doctor|
      doc_specialties << doctor.specialty
    end
    doc_specialties
  end
end
