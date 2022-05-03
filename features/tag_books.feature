Feature: Applying user tags to listed books

    As a user
    So that I can find my books easily
    I can filter the books based on tags

Background: books have been added to database

    Given the following books are in database:
    | title                         | author            | genre    |  tag_names        | description   | totalPage   |
    | The Lord of the Rings         | J. R. R. Tolkien  | Fiction  |  Fiction Fantasy  | Test Desc.    | 400         |
    | Nigma Machine                 | L nigma           | Fiction  |  Fiction          | Test Desc.    | 499         |
    | Ocean 2                       | R.R Afnan         | Fantasy  |  Fantasy          | Test Desc.    | 350         |
    | The Silent Patient            | Alex Michaelides  | Thriller |  Thriller         | Test Desc.    | 275         |
    | The Family Across the Street  | Nicole Trope      | Thriller |  Thriller         | Test Desc     | 500         |

    And  I am on the Read-it root page

Scenario: Filter with one tag

    When I fill the Tags box with single tag Fiction and press Search Tags
    Then I should see the following books: The Lord of the Rings, Nigma Machine


Scenario: Filter with multiple tags

    When I fill the Tags box with multiple tag Fiction Fantasy and press Search Tags
    Then I should see the following books: The Lord of the Rings, Nigma Machine, Ocean 2


Scenario: Filter with tags not present in the database

    When I fill the Tags box with tag Science not present and press Search Tags
    Then  as this tag is not present in the database I should see all the books : The Lord of the Rings, Ocean 2, Nigma Machine, The Silent Patient, The Family Across the Street