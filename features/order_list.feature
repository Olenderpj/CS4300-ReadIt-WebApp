Feature: Create ordered book list

  As a book reader

  Added books will be listed in ordered fashion by author’s name, book name and genre

  So that my books will be easier to search and find

  Background: books have been added to database

    Given the following books exist:
    | title                       | author          | genre           | 
    | The Da Vinci Code           | Dan Brown       | Thriller        |
    | Foundation                  | Isaac Asimov    | Science Fiction |
    | The Lost Symbol             | Dan Brown       | Thriller        | 
    | Dune                        | Frank Herbert   | Science Fiction |
    | Angels & Demons             | Dan Brown       | Thriller        |

    And  I am on the Read-it home page

  Scenario: restrict to option 'author' 

    When I select the option author

    # And I press "filter"

    Then I should see the following books author order: Dan Brown, Dan Brown, Dan Brown, Frank Herbert, Isaac Asimov 

  Scenario: restrict to option 'genre'

    When I select the option genre

    # And I press "filter"

    Then I should see the following books genre order: Science Fiction, Science Fiction, Thriller, Thriller, Thriller  
