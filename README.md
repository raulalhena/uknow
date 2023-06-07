
U-KNOW: La plataforma de aprendizaje cooperativo.

Somos una start-up que queremos cambiar el modelo de compartir conocimientos para favorecer el aprendizaje cooperativo y...divertirnos un poco también.

Queremos crear U-KNOW, la nueva plataforma de intercambio de conocimientos y aprendizaje cooperativo. Nuestra aplicación se basará en el sistema de recompensas para mantener la calidad de los contenidos y favorecer la participación.

Hemos creado nuestra estructura de base de datos en MySql. En este repoditorio podrán encontrar el archivo Dump de nuestro proyecto, al igual que el esquema representatorio de la base de datos.

Presentacion de Canva:
https://www.canva.com/design/DAFkq8rI7WQ/CSJQJa_gFRlq_hf7t5XW7Q/view?utm_content=DAFkq8rI7WQ&utm_campaign=designshare&utm_medium=link&utm_source=publishsharelink

![uknow_schema](https://github.com/raulalhena/uknow/assets/125603610/f2ea1d19-0229-476e-b61a-829bcc7e82f9)

Team members: 
- Carlos Saiz (Scrum Master)
- Raul Alhena (Product Onwer)
- Deniz Ozerdogan (Developer)
- Jesus Fajardo (Developer)


EXEMPLE QUERIES: 

USER SIGNUP: 
```SQL

INSERT INTO user (first_name, last_name, user_name, email, password) VALUES ('Dani', 'Lumbreras', 'danielluces', 'daniluces@example.com', '1234');

```
CREATE NEW COURSE: 
```SQL

INSERT INTO course (name, content, tags, difficulty, author_id) VALUES ('New course 1', 'New content to your delight', 'spiritual delight, enjoy life', 'easy', 50);

````

SHOW ALL THE COURSES CREATED BY A USER:
```SQL

SELECT course.name, user.user_name FROM course JOIN user ON course.author_id = user.id WHERE user.user_name = 'raulalhena';

```

ALL COURSES LIST ORDERED BY NUMBER OF STARS
```SQL
SELECT course.name, review.stars 
FROM course
JOIN course_has_review ON course.id = course_has_review.course_id
JOIN review ON course_has_review.review_id = review.id
ORDER BY review.stars DESC
```

