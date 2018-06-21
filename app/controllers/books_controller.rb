class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(resource_params)
    if @book.save
      render plain: 'berhasil menyimpan buku baru'
    else
      render 'new'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(resource_params)
    render plain: 'berhasil mengubah buku baru'
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    render plain: 'berhasil menghapus buku'
  end

  def active
    @books = Book.where(status: 1)
    render 'index'
  end

  def toggle
    @book = Book.find(params[:id])
    @book.status = 0
    @book.save
    render plain: 'buku berhasil dinonaktifkan'
  end
  
  
  private
    def resource_params
      params.require(:book).permit(:title, :page, :description)
    end
    

end