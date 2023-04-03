### Hexlet tests and linter status:
[![Actions Status](https://github.com/Werstad/rails-project-63/workflows/hexlet-check/badge.svg)](https://github.com/Werstad/rails-project-63/actions)

[![linter & tests](https://github.com/Werstad/rails-project-63/actions/workflows/hexlet-code.yml/badge.svg)](https://github.com/Werstad/rails-project-63/actions/workflows/hexlet-code.yml)

## Описание проекта

Это генератор форм

## Настройка

#### Gemfile:

  ```ruby
    gem 'hexlet_code', git: 'https://github.com/Werstad/rails-project-63'
  ```

#### Выполнить:

  ```bash
    bundle install
  ```

## Применение

  ```ruby
    <%= Hexlet.form_for(user, url: "/users") do |f| %>
      <%= f.input :name, class: "user-input" %>
      <%= f.input :profession, as: "text", rows: 50, cols: 50 %>
      <%= f.submit 'Confirm' %>
    <% end %>
  ```
