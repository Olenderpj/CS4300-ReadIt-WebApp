Feature: Create ordered book list

  As a book reader

  Added books will be listed in ordered fashion by author’s name, book name and genre

  So that my books will be easier to search and find

  Background: books have been added to database

    Given the following books exist:
    | title                       | author          | genre           | tag_names        | description   | totalPage   |  created_at          |
    | The Da Vinci Code           | Dan Brown       | Thriller        | Fiction Fantasy  | Test Desc.    | 400         |  2022-03-26 02:23:30 |
    | Foundation                  | Isaac Asimov    | Science Fiction | Fiction          | Test Desc.    | 499         |  2022-03-26 02:23:27 |
    | The Lost Symbol             | Dan Brown       | Thriller        | Fantasy          | Test Desc.    | 350         |  2022-03-26 02:23:28 |
    | Dune                        | Frank Herbert   | Science Fiction | Thriller         | Test Desc.    | 275         |  2022-03-26 02:23:25 |
    | Angels & Demons             | Dan Brown       | Thriller        | Thriller         | Test Desc     | 500         |  2022-03-26 02:23:20 |

    And  I am on the Read-it home page

  Scenario: restrict to option 'author' 

    When I select the option author

    # And I press "Sort"

    Then I should see the following books author order: Dan Brown, Dan Brown, Dan Brown, Frank Herbert, Isaac Asimov 

  Scenario: restrict to option 'genre'

    When I select the option genre

    # And I press "Sort"

    Then I should see the following books genre order: Science Fiction, Science Fiction, Thriller, Thriller, Thriller

  Scenario: restrict to option 'oldest-newest'

    When I select the option oldest-newest

    # And I press "Sort"

    Then I should see the following books order: Angels & Demons, Dune, Foundation, The Lost Symbol, The Da Vinci Code

