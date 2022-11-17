# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

<!-- Validations -->
#    Un film doit avoir un titre unique et un aperçu.
      validates :title, uniqueness: true
      validates :overview

#    Une liste doit avoir un nom unique.
      validates :name, uniqueness: true

#    Un bookmark doit être lié à un film et une liste, et les associations [film, liste] doivent être uniques.
    validates :movie_id, uniqueness: { scope: :list_id }

#    Le commentaire associé à un signet ne peut pas avoir moins de 6 caractères.
      validates :comment, length: { minimum: 6 }


#    A list has many bookmarks
      has_many :bookmarks

#   A list has many movies through bookmarks
      has_many :movies, through: :bookmarks

#    A movie has many bookmarks
      has_many :bookmarks

#   A bookmark belongs to a movie
      belongs_to :movie

#   A bookmark belongs to a list
      belongs_to :list

#    You can’t delete a movie if it is referenced in at least one bookmark.


#    When you delete a list, you should delete all associated bookmarks (but not the movies as they can be referenced in other lists).
