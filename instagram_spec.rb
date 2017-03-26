require_relative 'instagram'

describe Instagram do

    it "has positive mood" do 
        post = Instagram.new

        expect(post.get_sentiment).to eq "POSITIVE"
    end

end