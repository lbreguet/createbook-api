# CreateBook API


## Front-end
https://github.com/lbreguet/createBook


## Deployed Client
https://lbreguet.github.io/createBook/


## Deployed API
https://createbook-api.herokuapp.com/


## ERD

![ERD](https://github.com/lbreguet/createBook/blob/comments/assets/img/erd-createbook.JPG "WireFrame")


## Routes

| Verb   |   URI Pattern   |    Controller#Action |
|:-------|:----------------|:---------------------|
| GET    | `/comments`     | `comments#index`     |
| GET    | `/comments/:id` | `comments#show`      |
| GET    | `/posts/:post_id/comments` | `comments#index`  |
| POST   | `/posts/:post_id/comments` | `comments#create` |
| PATCH  | `/comments/:id` |   `comments#update`    |
| DELETE | `/comments/:id` | `comments#destroy`   |
| GET    | `/posts`     | `posts#index`     |
| GET    | `/posts/:id` | `posts#show`      |
| POST   | `/posts` | `posts#create` |
| PATCH  | `/posts/:id` |   `posts#update`    |
| DELETE | `/posts/:id` | `posts#destroy`   |
| POST  | `/sign-up` | `users#signup` |
| POST  | `/sign-in` | `users#signin` |
| DELETE | `/sign-out/:id` |  `users#signout` |
| PATCH | `/change-password/:id`  | `users#changepw` |
| GET   | `/users`     |   `users#index` |
| GET  |  `/users/:id`  |   `users#show` |


## Dependencies

Install with `bundle install`.


## Technologies
  - Ruby on Rails
  - PSQL


## Development Process
  I started by mapping out what potential relationships I wanted to have,
`posts` and `comments`. I scaffolded `posts` made it have a relationship with
`users` and set a `current_user` that users can edit their own resource more
easily with an `OpenReadController`.

  After getting `posts` to be fully CRUDable, I started working on making
`comments`. This was a little trickier because the it had a relationship with
both `posts` and `users` in the same fashion that the latter two had with each
other. So again I had to set a `current_user` on the `comments`. But then I
thought about not wanting to pass the `post_id` from the foreign key into any
inputs on the front-end, so I had to create a nested route.

  Having a nested resource will actually make it easier when I start doing the
switch on the front-end to Ember.js.


## Major Hurdles

When trying to create a comment, the `TOKEN` from the user wasn't being
processed. I kept getting `422` errors because a user had to exist. But, after
consulting with developers, I just had to set `@comment.user = current_user`.
