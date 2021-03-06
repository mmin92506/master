*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Sign In
    Log  ${GLOBAL_MESSAGE}
    click link  Log in
    WAIT UNTIL PAGE CONTAINS  Log in
    sleep  2s

EnterCreds
    sleep  2s
    WAIT UNTIL ELEMENT IS VISIBLE  id=session_email
    input text  id=session_email  coda92056@gmail.com
    input text  id=session_password  password
    click button  xpath=//input[@name='commit']
    #if successful it should redirect user to user profile page below
    WAIT UNTIL PAGE CONTAINS  Koda Bare
    sleep   2s

BadCreds
    input text  id=session_email  obda92056@gmail.com
    input text  id=session_password  password
    click button  xpath=//input[@name='commit']
    WAIT UNTIL PAGE CONTAINS  Invalid email/password combination
    sleep  2s




