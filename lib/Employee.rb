# frozen_string_literal: true

class Employee
  attr_accessor(:name, :salary, :manager_name)
  attr_reader
  attr_writer

  @@all = []

  def initialize(name:, salary:, manager_name:)
    @name = name
    @salary = salary
    @manager_name = manager_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(integer)
    @@all.select { |employee| employee.salary > integer }
  end

  def self.find_by_department(dept_search)
    @@all.find do |employee|
      Manager.all.find do |manager|
        manager.department == dept_search && manager.name == employee.manager_name
      end
    end
  end

  def tax_bracket
    @@all.select { |employee| employee.salary.between?(@salary - 1000, @salary + 1000) }
  end
end
