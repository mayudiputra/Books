class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(resource_params)
    book.save
    render plain: 'berhasil menyimpan buku baru'
    #render plain: params.inspect
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
    def resource_params
      params.require(:book).permit(:title, :page, :description)
    end
    

end