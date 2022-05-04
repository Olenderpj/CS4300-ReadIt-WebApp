Feature: Viewing reading progress and history
    As a user
    So that I can know what books I have completed
    I want to see my reading history and progress with details

Background: books have been added to database

    Given the following books exist:
    | title                       | author          | genre           | tag_names        | description   | totalPage   |  created_at          |  isInReadingList | isRead |
    | The Da Vinci Code           | Dan Brown       | Thriller        | Fiction Fantasy  | Test Desc.    | 400         |  2022-03-26 02:23:30 |  true            | false  |
    | Foundation                  | Isaac Asimov    | Science Fiction | Fiction          | Test Desc.    | 499         |  2022-03-26 02:23:27 |  false           | true   |
    | The Lost Symbol             | Dan Brown       | Thriller        | Fantasy          | Test Desc.    | 350         |  2022-03-26 02:23:28 |  true            | false  |
    | Dune                        | Frank Herbert   | Science Fiction | Thriller         | Test Desc.    | 275         |  2022-03-26 02:23:25 |  true            | false  |
    | Angels & Demons             | Dan Brown       | Thriller        | Thriller         | Test Desc     | 500         |  2022-03-26 02:23:20 |  false           | true   |

Scenario: The user views their reading history
    Given: The user is on the Books I've already Read page
    When: The user has 1 or more read books
    Then: The visible books should match the list of read books

Scenario: The user views their book wishlist
    Given: The user is on the Books I Want to Read page
    When: The user has 1 or more read books
    Then: The visible books should match the list of read books