Feature: Applying user tags to listed books

    As a user
    So that I can find my books easily
    I can filter the books based on tags

Background: books have been added to database

    Given the following books exist:
    | title                         | author            | genre    |  tag_names        |
    | The Lord of the Rings         | J. R. R. Tolkien  | Fiction  |  Fiction Fantasy  |
    | Ocean 2                       | R.R Afnan         | Fantasy  |  Fantasy          |
    | Nigma Machine                 | L nigma           | Fiction  |  Fiction          |
    | The Silent Patient            | Alex Michaelides  | Thriller |  Thriller         |
    | The Family Across the Street  | Nicole Trope      | Thriller |  Thriller         |

    And  I am on the Read-it home page

Scenario: Filter with one tag

    When I fill the Tags box with tag 'Fiction'
    And press Search Tags
    Then I should see the following books: The Lord of the Rings, Nigma Machine


Scenario: Filter with multiple tags

    When I fill the Tags box with tag 'Fiction Fantasy'
    And press Search Tags
    Then I should see the following books: The Lord of the Rings, Ocean 2, Nigma Machine


Scenario: Filter with tags not present in the database

    When I fill the Tags box with tag 'Science'
    And press Search Tags
    Then  as this tag is not present in the database I should see all the books : The Lord of the Rings, Ocean 2, Nigma Machine, The Silent Patient, The Family Across the Street