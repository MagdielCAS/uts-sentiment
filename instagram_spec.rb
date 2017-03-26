require_relative 'instagram'

describe Instagram, "#sentiment?" do

    context "when sentiment change" do
        it "has to change for positive, neutral or negative" do
            post = Instagram.new
           
            post.perform_requisition("positive")
            expect(post.sentiment?).to eq "POSITIVE"
    
            post.perform_requisition("neutral")
            expect(post.sentiment?).to eq "NEUTRAL"

            post.perform_requisition("negative")
            expect(post.sentiment?).to eq "NEGATIVE"
        end
    end
end