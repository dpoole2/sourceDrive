require "application_system_test_case"

class FolderFilesTest < ApplicationSystemTestCase
  setup do
    @folder_file = folder_files(:one)
  end

  test "visiting the index" do
    visit folder_files_url
    assert_selector "h1", text: "Folder Files"
  end

  test "creating a Folder file" do
    visit folder_files_url
    click_on "New Folder File"

    click_on "Create Folder file"

    assert_text "Folder file was successfully created"
    click_on "Back"
  end

  test "updating a Folder file" do
    visit folder_files_url
    click_on "Edit", match: :first

    click_on "Update Folder file"

    assert_text "Folder file was successfully updated"
    click_on "Back"
  end

  test "destroying a Folder file" do
    visit folder_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Folder file was successfully destroyed"
  end
end
