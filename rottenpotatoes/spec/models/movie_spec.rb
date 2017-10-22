require 'rails_helper'
describe Movie do
			describe "#similar_movies" do
							it "should find movies by the same director" do
										movie1 = Movie.create! :director => "Paul Newman"
										movie2 = Movie.create! :director => "Paul Newman"
										expect(movie1.similar_movies).to include(movie2) 				
							end
							it "should find not movies by different director" do
										movie1 = Movie.create! :director => "Paul Newman"
										movie2 = Movie.create! :director => "James Cameron"
										expect(movie1.similar_movies).not_to include(movie2) 				
							end
			end
  describe 'find a movie' do
    it 'should show the movie information' do
      movie = mock('Movie')
      Movie.should_receive(:find).with('1').and_return(movie)
      get :show, {:id => '1'}
      response.should render_template('show')
    end
  end
end