require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { civilian_id: @job.civilian_id, job_name: @job.job_name }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should update job" do
    patch :update, id: @job, job: { civilian_id: @job.civilian_id, job_name: @job.job_name }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
