# CreateBook API


## ERD

![ERD](https://github.com/lbreguet/createBook/blob/comments/assets/img/erd-createbook.JPG "ERD")


## Routes

```bash
Prefix Verb   URI Pattern                        Controller#Action
     comments GET    /comments(.:format)                comments#index
              POST   /comments(.:format)                comments#create
      comment GET    /comments/:id(.:format)            comments#show
              PATCH  /comments/:id(.:format)            comments#update
              PUT    /comments/:id(.:format)            comments#update
              DELETE /comments/:id(.:format)            comments#destroy
post_comments GET    /posts/:post_id/comments(.:format) comments#index
              POST   /posts/:post_id/comments(.:format) comments#create
        posts GET    /posts(.:format)                   posts#index
              POST   /posts(.:format)                   posts#create
         post GET    /posts/:id(.:format)               posts#show
              PATCH  /posts/:id(.:format)               posts#update
              PUT    /posts/:id(.:format)               posts#update
              DELETE /posts/:id(.:format)               posts#destroy
      sign_up POST   /sign-up(.:format)                 users#signup
      sign_in POST   /sign-in(.:format)                 users#signin
              DELETE /sign-out/:id(.:format)            users#signout
              PATCH  /change-password/:id(.:format)     users#changepw
        users GET    /users(.:format)                   users#index
         user GET    /users/:id(.:format)               users#show
```


## Dependencies

Install with `bundle install`.


## Technologies
  - Ruby on Rails
  - PSQL


## Development Process
