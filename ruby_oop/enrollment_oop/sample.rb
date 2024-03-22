require_relative 'course'
require_relative 'subject'
require_relative 'room'
require_relative 'student'
require_relative 'teacher'
require_relative 'subject_students'
require 'date'
Course.generate_samples
Subject.generate_samples
Student.generate_samples
Teacher.generate_samples

module MainMenu
  def self.run
    run = true
    while run
      puts 'MAIN MENU'
      puts '-------------------'
      puts '(1) Courses Tab'
      puts '(2) Subjects Tab'
      puts '(3) Students Tab'
      puts '(4) Teachers Tab'
      puts '(5) Rooms Tab'
      puts '(6) Enroll'
      puts '(7) Exit'
      puts '-------------------'

      puts 'Select one:'
      option = gets.to_i

      case option
      when 1
        fetch_course_tab
      when 2
        fetch_course_tab
      when 3
        fetch_student_tab
      when 4
        fetch_teacher_tab
      when 5
        fetch_room_tab
      when 6
        fetch_enroll_tab
      when 7
        run = false
      else
        puts 'Invalid input'
      end
    end
  end

  def self.fetch_course_tab
    run = true
    while run
      puts '-------------------'
      puts 'COURSES TAB'
      puts '(1) View courses list'
      puts '(2) Add course'
      puts '(3) Go back'
      puts '-------------------'

      puts 'Select one: '
      option = gets.to_i

      case option
      when 1
        puts 'LISTS OF COURSES'
        puts '-------------------'
        Course.list.each do |course|
          puts "#{course.id} - #{course.name}"
        end
        puts '-------------------'
        puts "Press any key to go back."
        gets.chomp
      when 2
        puts 'ADD A NEW COURSE'
        puts '-------------------'
        print 'Course ID: '
        new_course_id = gets.chomp #check if already taken
        print 'Course Name: '
        new_course_name = gets.chomp
        puts 'Would you like to save changes? (y/n)'
        save_input = gets.chomp
        if save_input == 'y' || save_input == 'yes'
          new_course = Course.new(new_course_id, new_course_name)
          new_course.save
          puts "Course has been added successfully. Press any key to go back."
          p Course.list
        else
          puts "Changes not saved. Press any key to go back."
          gets.chomp
        end
      when 3
        run = false
      else
        puts 'Invalid input'
      end
    end
  end

  def self.fetch_subject_tab
    puts 'call subject tab'
  end

  def self.fetch_student_tab
    puts 'call student tab'
  end

  def self.fetch_teacher_tab
    puts 'call teacher tab'
  end

  def self.fetch_room_tab
    puts 'call room tab'
  end

  def self.fetch_enroll_tab
    'call enroll tab'
  end
end

MainMenu.run


