require 'rails_helper'

describe MoviesController do
			
			describe "#director" do
						context "When specified movie has a director" do

										it "should find movies with the same director" do
													@movie_id = "1234"
													@movie = double('fake_movie', :director => 'James Cameron')
										
													expect(Movie).to receive(:find).with(@movie_id).and_return(@movie)
													expect(@movie).to receive(:similar_movies)

													get :director, :id => @movie_id
										
													expect(response).to render_template(:director)

										end
						end
						context "When specified movie has no director" do

										it "should redirect to the movies page" do
													@movie_id = "1234"
													@movie = double('fake_movie').as_null_object
													expect(Movie).to receive(:find).with(@movie_id).and_return(@movie)
													get :director, :id => @movie_id
													expect(response).to redirect_to(movies_path)

										end
						end

			end

#addition
  describe 'list all movies' do

    it 'should find and list all movies' do
      fake_results = [mock('Movie'), mock('Movie')]
      Movie.should_receive(:find_all_by_rating).and_return(fake_results)
      get :index
      response.should render_template('index')
    end

    it 'should find list all movies, sort by title' do
      get :index, {:sort => 'title', :ratings => 'PG'}
      response.should redirect_to(:sort => 'title', :ratings => 'PG')
    end

    it 'should find list all movies, sort by release_date' do
      get :index, {:sort => 'release_date', :ratings => 'PG'}
      response.should redirect_to(:sort => 'release_date', :ratings => 'PG')
    end

    it 'should find list all movies with rating PG' do
      get :index, {:ratings => 'PG'}
      response.should redirect_to(:ratings => 'PG')
    end

  end


#


###movre
  describe 'delete a movie' do
    it 'should delete the movie' do
      movie = double('Movie', :id => '1', :title => 'The Help')
      Movie.should_receive(:find).with('1').and_return(movie)
      movie.should_receive(:destroy)
      delete :destroy, :id => '1'
      response.should redirect_to(movies_path)
    end
			end
#

end
