class HugeController < ApplicationController
    def read
        @posts = Post.all
    end
    
    def write
        post = Post.new
        post.post_username = params[:username]
        post.post_password = params[:password]
        post.post_content = params[:content]
        post.save
        
        redirect_to "/"
    end
    
    def confirm
        @check_password = Post.find(params[:id])
    end
    
    def delete
        masterkey = "941218"
        
        @posts = Post.find(params[:id])
        if @posts.post_password == params[:password_check]
            #password_check와 해당 id로 입력된 db의 post_password랑 같으면
            #지우고 메인페이지로 돌아가고
            @posts.destroy
            redirect_to "/"
        elsif masterkey == params[:password_check]
            @posts.destroy
            redirect_to "/"
        else
            # password_check와 post_password랑 같지 않으면
            # delete.erb를 표시한다.
        end
        
    end
    
    def modify
        @one_post = Post.find(params[:id])
        
    end
    
    def update
        one_post = Post.find(params[:id])
        one_post.post_username = params[:new_username]
        one_post.post_content = params[:new_content]
        one_post.save
        
        redirect_to "/"
    end
end
