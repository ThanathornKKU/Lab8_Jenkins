*** Settings ***
Resource    ../test_resource.robot
Library     SeleniumLibrary

*** Variables ***
${error_message}    Please enter your destination.

*** Test Cases ***
Open Form
    [Documentation]    ทดสอบเปิดหน้า Form.html
    Open Browser To Form Page
    Form Page Should Be Open
    Close Browser

Empty Destination
    [Documentation]    ทดสอบกรอกข้อมูล Empty Destination บนหน้า Form.html
    Open Browser To Form Page
    Input Firstname    ${FIRST_NAME}
    Input Lastname    ${LAST_NAME}
    # Input Destination    ${DESTINATION}
    Input Contact Person    ${CONTACT_PERSON}
    Input Relationship    ${RELATIONSHIP}
    Input Email    ${EMAIL}
    Input Phone    ${PHONE}
    Click Button    id=submitButton
    Form Page Should Be Open
    Error Message Should Be Shown    ${error_message}
    Close Browser