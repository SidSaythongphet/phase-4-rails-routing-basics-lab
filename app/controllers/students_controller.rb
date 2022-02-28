class StudentsController < ApplicationController

    def index
        students = Student.all 
        render json: students
    end

    def grades
        students = Student.order('grade DESC')
        render json: students
    end

    def highest_grade
        student = Student.order('grade DESC')[0]
        render json: student
    end

end
