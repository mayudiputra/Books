class HomeController < ApplicationController
  def index
    @langs = ['ruby', 'php', 'java']

    @books = Book.all
  end

  def halo
    id = params[:id]
    book = Book.find_by id: id
    if book
      @title = book.title
    else
      @title = 'tidak ditemukan'
    end
  end
end