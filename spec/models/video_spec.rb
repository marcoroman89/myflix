require "spec_helper"

describe Video do
  it "saves to itself" do
    video = Video.new(title: "The Office", description: "A very funny office comedy")
    video.save 
    expect(Video.first).to eq(video)

    # Alternative Syntax For Writing Tests
    # Video.first.should == video
    # Video.first.should eq(video)
  end

  it "belongs to category" do
  	dramas = Category.create(name: "Dramas")
  	monk = Video.create(title: "Monk", description: "Very Funny Comdedy!", category: dramas)
  	expect(monk.category).to eq(dramas)
  end

  it "does not save a video without a title" do
  	video = Video.create(description: "A great video")
  	expect(Video.count).to eq(0)
  end	
  it "does not save a video without a description" do
  	video = Video.create(title: "Star Wars")
  	expect(Video.count).to eq(0)
 	end

  describe "search_by_title" do 
    it "returns and empty array if there is no match" do
      futurama = Video.create(title: "Futurama", description: "Space Travel")
      back_to_the_future = Video.create(title: "Back to the Future", description: "Time Travel")
      expect(Video.search_by_title("Hello")).to eq([])
    end  
    
    it "returns and array of one video for an exact match" do
    futurama = Video.create(title: "Futurama", description: "Space Travel")
      back_to_the_future = Video.create(title: "Back to the Future", description: "Time Travel")
      expect(Video.search_by_title("Futurama")).to eq([futurama])  
    end  
    
    it "returns an array of one video for a partial match" do 
    futurama = Video.create(title: "Futurama", description: "Space Travel")
      back_to_the_future = Video.create(title: "Back to the Future", description: "Time Travel")
      expect(Video.search_by_title("urama")).to eq([futurama])   
    end  
    
    it "returns an array of all matches ordered by created_at" do 
    futurama = Video.create(title: "Futurama", description: "Space Travel")
      back_to_the_future = Video.create(title: "Back to the Future", description: "Time Travel")
      expect(Video.search_by_title("Futur")).to eq([back_to_the_future, futurama])   
    end

    it "returns an empty array for a search with an empty string" do
      futurama = Video.create(title: "Futurama", description: "Space Travel")
      back_to_the_future = Video.create(title: "Back to the Future", description: "Time Travel")
      expect(Video.search_by_title("")).to eq([]) 
    end  
  end 	
end
