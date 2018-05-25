class TemplateController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def create
        
    end
    
    def destroy
        p = Post.find(params[:post_id])
        p.destroy
        redirect_to '/'
    end
    
    def edit
        @post = Post.find(params[:post_id])
    end
    
    def update
        p = Post.find(params[:post_id])
        p.title = params[:post_title]
        p.content = params[:post_content]
        p.hashtags = []
        hashtags = params[:hashtags].split(',')
        hashtags.each do |tag|
            hashtag = Hashtag.find_or_create_by(name: tag.delete(''))
            hashtag.save
            p.hashtags << hashtag
        end
        p.save
        redirect_to '/'
    end
    
    def new
        p = Post.new
        p.title = params[:post_title]
        p.content = params[:post_content]
        hashtags = params[:hashtags].split(',')
        hashtags.each do |tag|
            hashtag = Hashtag.find_or_create_by(name: tag.delete(''))
            hashtag.save
            p.hashtags << hashtag
        end
        p.save
        redirect_to '/'
    end
end