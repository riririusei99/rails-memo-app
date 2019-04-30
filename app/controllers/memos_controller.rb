class MemosController < ApplicationController
  def index
    @memos = Memo.all
    @memo = Memo.new
  end 
end
