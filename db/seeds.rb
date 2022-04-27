# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(
    {
    id: 1,
    email: "none@nomail.com",
    password: "123456",
    password_confirmation: "123456",
    firstName: "PJ",
    lastName: "Olender",
    birthDay: 07,
    birthMonth: 15,
    birthYear: 1945,
    }
)

books = Book.create([
    {
    title: "Harry Potter and the Sorcerer's Stone",
    author: "J.K. Rowling",
    description: "Harry Potter's life is miserable. His parents are dead and he's stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he's a wizard. A mysterious visitor rescues him from his relatives and takes him to his new home, Hogwarts School of Witchcraft and Wizardry. After a lifetime of bottling up his magical powers, Harry finally feels like a normal kid. But even within the Wizarding community, he is special. He is the boy who lived: the only person to have ever survived a killing curse inflicted by the evil Lord Voldemort, who launched a brutal takeover of the Wizarding world, only to vanish after failing to kill Harry. Though Harry's first year at Hogwarts is the best of his life, not everything is perfect. There is a dangerous secret object hidden within the castle walls, and Harry believes it's his responsibility to prevent it from falling into evil hands. But doing so will bring him into contact with forces more terrifying than he ever could have imagined.",
    genre: "Fiction",
    totalPage: 309,
    readPage: 0,
    user_id: 1,
    },
    {
    title: "Harry Potter and the Chamber of Secrets",
    author: " J.K. Rowling",
    description: "Ever since Harry Potter had come home for the summer, the Dursleys had been so mean and hideous that all Harry wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he’s packing his bags, Harry receives a warning from a strange impish creature who says that if Harry returns to Hogwarts, disaster will strike. And strike it does. For in Harry’s second year at Hogwarts, fresh torments and horrors arise, including an outrageously stuck-up new professor and a spirit who haunts the girls’ bathroom. But then the real trouble begins – someone is turning Hogwarts students to stone. Could it be Draco Malfoy, a more poisonous rival than ever? Could it possible be Hagrid, whose mysterious past is finally told? Or could it be the one everyone at Hogwarts most suspects… Harry Potter himself!",
    genre: "Fiction",
    totalPage: 341,
    readPage: 250,
    user_id: 1,
    },
    {
    title: "Harry Potter and the Prisoner of Azkaban",
    author: "J.K. Rowling",
    description: "For use in schools and libraries only. During his third year at Hogwarts School for Witchcraft and Wizardry, Harry Potter must confront the devious and dangerous wizard responsible for his parents' deaths.",
    genre: "Fiction, Magic",
    totalPage: 435,
    readPage: 50,
    user_id: 1,  
    },
    {
    title: "Harry Potter and the Goblet of Fire",
    author: "J.K. Rowling",
    description: "Harry Potter is midway through his training as a wizard and his coming of age. Harry wants to get away from the pernicious Dursleys and go to the International Quidditch Cup with Hermione, Ron, and the Weasleys. He wants to dream about Cho Chang, his crush (and maybe do more than dream). He wants to find out about the mysterious event that's supposed to take place at Hogwarts this year, an event involving two other rival schools of magic, and a competition that hasn't happened for hundreds of years. He wants to be a normal, fourteen-year-old wizard. But unfortunately for Harry Potter, he's not normal - even by wizarding standards. And in his case, different can be deadly.",
    genre: "Fiction, Magic",
    totalPage: 734,
    readPage: 0,
    user_id: 1,  
    },
    {
    title: "Harry Potter and the Order of the Phoenix",
    author: "J.K. Rowling",
    description: "There is a door at the end of a silent corridor. And it’s haunting Harry Pottter’s dreams. Why else would he be waking in the middle of the night, screaming in terror? Harry has a lot on his mind for this, his fifth year at Hogwarts: a Defense Against the Dark Arts teacher with a personality like poisoned honey; a big surprise on the Gryffindor Quidditch team; and the looming terror of the Ordinary Wizarding Level exams. But all these things pale next to the growing threat of He-Who-Must-Not-Be-Named - a threat that neither the magical government nor the authorities at Hogwarts can stop. As the grasp of darkness tightens, Harry must discover the true depth and strength of his friends, the importance of boundless loyalty, and the shocking price of unbearable sacrifice.",
    genre: "Fiction, Magic",
    totalPage: 870,
    readPage: 865,
    user_id: 1,  
    },
    {
    title: "Harry Potter and the Half-Blood Prince",
    author: "J.K. Rowling",
    description: "The war against Voldemort is not going well; even Muggle governments are noticing. Ron scans the obituary pages of the Daily Prophet, looking for familiar names. Dumbledore is absent from Hogwarts for long stretches of time, and the Order of the Phoenix has already suffered losses. And yet . . . As in all wars, life goes on. The Weasley twins expand their business. Sixth-year students learn to Apparate - and lose a few eyebrows in the process. Teenagers flirt and fight and fall in love. Classes are never straightforward, through Harry receives some extraordinary help from the mysterious Half-Blood Prince. So it's the home front that takes center stage in the multilayered sixth installment of the story of Harry Potter. Here at Hogwarts, Harry will search for the full and complete story of the boy who became Lord Voldemort - and thereby find what may be his only vulnerability.",
    genre: "Fiction, Magic, Adventure",
    totalPage: 652,
    readPage: 0,
    user_id: 1,  
    },
    {
    title: "Harry Potter and the Deathly Hallows",
    author: "J.K. Rowling",
    description: "It's no longer safe for Harry at Hogwarts, so he and his best friends, Ron and Hermione, are on the run. Professor Dumbledore has given them clues about what they need to do to defeat the dark wizard, Lord Voldemort, once and for all, but it's up to them to figure out what these hints and suggestions really mean. Their cross-country odyssey has them searching desperately for the answers, while evading capture or death at every turn. At the same time, their friendship, fortitude, and sense of right and wrong are tested in ways they never could have imagined. The ultimate battle between good and evil that closes out this final chapter of the epic series takes place where Harry's Wizarding life began: at Hogwarts. The satisfying conclusion offers shocking last-minute twists, incredible acts of courage, powerful new forms of magic, and the resolution of many mysteries. Above all, this intense, cathartic book serves as a clear statement of the message at the heart of the Harry Potter series: that choice matters much more than destiny, and that love will always triumph over death.",
    genre: "Fiction, Magic, Adventure",
    totalPage: 759,
    readPage: 547,
    user_id: 1,  
    },
    {
    title: "Rot & Ruin",
    author: "Jonathan Maberry",
    description: "In the zombie-infested, post-apocalyptic America where Benny Imura lives, every teenager must find a job by the time they turn fifteen or get their rations cut in half. Benny doesn't want to apprentice as a zombie hunter with his boring older brother Tom, but he has no choice. He expects a tedious job whacking zoms for cash, but what he gets is a vocation that will teach him what it means to be human.",
    genre: "Horror, Zombies, Science-Fiction",
    totalPage: 458,
    readPage: 0,
    user_id: 1,  
    },
    {
    title: "The Curious Incident of the Dog in the Night-Time",
    author: "Mark Haddon",
    description: "Christopher John Francis Boone knows all the countries of the world and their capitals and every prime number up to 7,057. He relates well to animals but has no understanding of human emotions. He cannot stand to be touched. And he detests the color yellow. This improbable story of Christopher’s quest to investigate the suspicious death of a neighborhood dog makes for one of the most captivating, unusual, and widely heralded novels in recent years.",
    genre: "Fiction, Mystery, Young Adult, Classics",
    totalPage: 226,
    readPage: 25,
    user_id: 1,  
    },
    {
    title: "Hook, Line, and Sinker",
    author: "Tessa Bailey",
    description: "King crab fisherman Fox Thornton has a reputation as a sexy, carefree flirt. Everyone knows he's a guaranteed good time--in bed and out--and that's exactly how he prefers it. Until he meets Hannah Bellinger. She's immune to his charm and looks, but she seems to enjoy his... personality? And wants to be friends? Bizarre. But he likes her too much to risk a fling, so platonic pals it is. Now, Hannah's in town for work, crashing in Fox's spare bedroom. She knows he's a notorious ladies' man, but they're definitely just friends. In fact, she's nursing a hopeless crush on a colleague and Fox is just the person to help with her lackluster love life. Armed with a few tips from Westport's resident Casanova, Hannah sets out to catch her coworker's eye... yet the more time she spends with Fox, the more she wants him instead. As the line between friendship and flirtation begins to blur, Hannah can't deny she loves everything about Fox, but she refuses to be another notch on his bedpost. Living with his best friend should have been easy. Except now she's walking around in a towel, sleeping right across the hall, and Fox is fantasizing about waking up next to her for the rest of his life and... and... man overboard! He's fallen for her, hook, line, and sinker. Helping her flirt with another guy is pure torture, but maybe if Fox can tackle his inner demons and show Hannah he's all in, she'll choose him instead?",
    genre: "Romance, Contemporary, Adult",
    totalPage: 385,
    readPage: 0,
    user_id: 1,  
    },
])