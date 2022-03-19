function plotXY(studentAvg, course, semester)
    % Plot students averages
    students = 1:25;
    plot(students, studentAvg)
    title(sprintf('%s %s Grades', course, semester))
    xlabel('Student Number')
    ylabel('Grades')

end