class MemosController < ApplicationController
  def index
    @memos = Memo.all
    @memo = Memo.new
  end 

  def create
    Memo.create(memo_params)
    @memos = Memo.all
  end
  
  def destroy
    Memo.find(parms[:id].destroy)
    @memos = Memo.all
  end
  
  private
  def memo_params
    params.require(:memo).permit(:text)
  end
end
