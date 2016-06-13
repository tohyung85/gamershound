class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :place

  RATINGS = {
    '&#x2605'.html_safe                               => '1_star',
    '&#x2605&#x2605'.html_safe                        => '2_stars',
    '&#x2605&#x2605&#x2605'.html_safe                 => '3_stars',
    '&#x2605&#x2605&#x2605&#x2605'.html_safe          => '4_stars',
    '&#x2605&#x2605&#x2605&#x2605&#x2605'.html_safe   => '5_stars',
  }

  def humanized_rating
    RATINGS.invert[self.rating]
  end
end
