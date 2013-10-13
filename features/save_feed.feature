Feature:
    In order to fetch the feeds from different sources
    As an Admin
    I can save infomations of these sources

    Scenario: Admin save Arsenal offcial feed source
        When I give a name "Official"
        And I give a url "http://www.arsenal.com/rssfeed"
        Then I have a valid record
