-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
        first_name,
        last_name,
	    title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

--sort by title
SELECT COUNT(title),
	    title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

-- List of managers per department
SELECT e.emp_no,
        e.first_name,
        e.last_name,
	    t.title,
        t.from_date,
        t.to_date
INTO retirement_titles
FROM employees AS e
    JOIN titles AS t
        ON (e.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;
		
