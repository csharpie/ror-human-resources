require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { commission_pct: @employee.commission_pct, department_id: @employee.department_id, email: @employee.email, employee_id: @employee.employee_id, first_name: @employee.first_name, hire_date: @employee.hire_date, job_id: @employee.job_id, last_name: @employee.last_name, manager_id: @employee.manager_id, phone_number: @employee.phone_number, salary: @employee.salary }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { commission_pct: @employee.commission_pct, department_id: @employee.department_id, email: @employee.email, employee_id: @employee.employee_id, first_name: @employee.first_name, hire_date: @employee.hire_date, job_id: @employee.job_id, last_name: @employee.last_name, manager_id: @employee.manager_id, phone_number: @employee.phone_number, salary: @employee.salary }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
