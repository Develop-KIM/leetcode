SELECT st.student_id, st.student_name, su.subject_name,
(
    SELECT COUNT(*)
    FROM Examinations ex
    WHERE st.student_id = ex.student_id
    AND su.subject_name = ex.subject_name
) AS attended_exams
FROM Students st, Subjects su
ORDER BY student_id, subject_name;