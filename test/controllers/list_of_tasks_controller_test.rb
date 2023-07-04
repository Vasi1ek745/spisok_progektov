require "test_helper"

class ListOfTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get list_of_tasks_index_url
    assert_response :success
  end
end
