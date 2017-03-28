require_relative 'instagram'

describe Instagram do

    describe ".perform_requisition" do

        context "when change sentiment" do
            it "has to succeed when positive" do
                post = Instagram.new
                expect(post.perform_requisition("positive")).to eq "200"
            end

            it "has to succeed when neutral" do
                post = Instagram.new
                expect(post.perform_requisition("neutral")).to eq "200"
            end

            it "has to succeed when negative" do
                post = Instagram.new
                expect(post.perform_requisition("negative")).to eq "200"
            end
        end
    end

    describe "#sentiment?" do

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
end