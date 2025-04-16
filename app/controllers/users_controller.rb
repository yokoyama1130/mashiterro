class UsersController < ApplicationController
  def show
    # URLに記載されたIDを参考に、必要なモデルを取得する
    @user = User.find(params[:id])
    # アソシエーションを持っているモデル同士の記述方法
    # 特定のユーザ(@user)に関連付けられた投稿全て(.post_images)を取得し,
    # @post_imagesに渡すという処理を行うことができる
    # 結果的に、全体の投稿ではなく、個人が投稿したもの全てを表示できる。
    @post_images = @user.post_images
  end

  def edit
    @user = User.find(params[:id])
  end

  #更新機能の作成！
  def update
    @user = User.find(params[:id]) # ユーザーの取得
    @user.update(user_params) # ユーザーのアップデート
    redirect_to user_path(@user.id) #ユーザーの詳細ページへのパス  
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
