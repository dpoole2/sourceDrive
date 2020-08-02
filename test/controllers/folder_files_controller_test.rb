require 'test_helper'

class FolderFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @folder_file = folder_files(:one)
  end

  test "should get index" do
    get folder_files_url
    assert_response :success
  end

  test "should get new" do
    get new_folder_file_url
    assert_response :success
  end

  test "should create folder_file" do
    assert_difference('FolderFile.count') do
      post folder_files_url, params: { folder_file: {  } }
    end

    assert_redirected_to folder_file_url(FolderFile.last)
  end

  test "should show folder_file" do
    get folder_file_url(@folder_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_folder_file_url(@folder_file)
    assert_response :success
  end

  test "should update folder_file" do
    patch folder_file_url(@folder_file), params: { folder_file: {  } }
    assert_redirected_to folder_file_url(@folder_file)
  end

  test "should destroy folder_file" do
    assert_difference('FolderFile.count', -1) do
      delete folder_file_url(@folder_file)
    end

    assert_redirected_to folder_files_url
  end
end
