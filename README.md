# Human Resources
## An Oracle Database and Ruby on Rails Tutorial

### Versions
* Ruby - 2.0.0
* Rails - 4.1.1
* Oracle 11g2 - Express Edition

### Steps to Reproduce
1. mkdir human_resources
2. cd human_resources
3. gem install ruby-oci8
4. gem install activerecord-oracle_enhanced-adapter
5. cd ..
6. in your browser navigate to http://docs.oracle.com/cd/E17781_01/admin.112/e18585/toc.htm#XEGSG121 and follow the section's instructions
7. rails new human_resources -d oracle
8. edit the database.yml located at ./config/database.yml
	i. change the adapter from oracle to oracle_enhanced
	ii. change the username to hr
	iii. change the password to password (or whatever password was used)
	iv. change the database key's value to localhost/XE
9. add this line after the line gem 'ruby-oci8', gem 'activerecord-oracle_enhanced-adapter' in the Gemfile
10. bundle install
11. rails generate scaffold
 employee employee_id:integer first_name:string last_name:string email:string phone_number:string hire_date:date job_id:string salary:float commission_pct:float manager_id:integer department_id:integer --skip-migration
12. rails server
13. in your browser navigate to localhost:3000/employees
14. feast your eyes on the view of all the employees table records in the XE database