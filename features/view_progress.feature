Feature: Viewing reading progress and history
    As a user
    So that I can know what books I have completed
    I want to see my reading history and progress with details

    Background: books have been added to database

    Given the following books exist for history test:
    | title                       | author          | genre           | tag_names        | description   | totalPage   |  created_at          |  isInReadingList | isRead |
    | The Da Vinci Code           | Dan Brown       | Thriller        | Fiction Fantasy  | Test Desc.    | 400         |  2022-03-26 02:23:30 |  true            | false  |
    | Foundation                  | Isaac Asimov    | Science Fiction | Fiction          | Test Desc.    | 499         |  2022-03-26 02:23:27 |  false           | true   |
    | The Lost Symbol             | Dan Brown       | Thriller        | Fantasy          | Test Desc.    | 350         |  2022-03-26 02:23:28 |  true            | false  |
    | Dune                        | Frank Herbert   | Science Fiction | Thriller         | Test Desc.    | 275         |  2022-03-26 02:23:25 |  true            | false  |
    | Angels & Demons             | Dan Brown       | Thriller        | Thriller         | Test Desc     | 500         |  2022-03-26 02:23:20 |  false           | true   |

    And I am on the Read-it home page for history

Scenario: The user views their reading history

    When The user clicks on books I have already read link
    Then The visible books should match the list of read books

Scenario: The user views their book wishlist
    
    When The user clicks on books I Want to Read
    Then The visible books should match the list of will read books