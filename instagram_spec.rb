require_relative 'instagram'

describe Instagram, "#sentiment?" do

    context "when sentiment change" do
        it "should change to positive" do
            post = Instagram.new
           
            post.perform_requisition("positive")
            expect(post.sentiment?).to eq "POSITIVE"
        end

        it "should change to neutral" do
            post = Instagram.new
           
            post.perform_requisition("neutral")
            expect(post.sentiment?).to eq "NEUTRAL"
        end

        it "should change to negative" do
            post = Instagram.new
           
            post.perform_requisition("negative")
            expect(post.sentiment?).to eq "NEGATIVE"
        end
    end
end