class Project < ActiveRecord::Base
	belongs_to :category

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/255x161.png"
	
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  validates_attachment :image,  :presence => true,
  :content_type => { :content_type => ["image/png", "image/jpeg", "image/jpg"] },
  :size => { :in => 0..1.megabytes}

   validates :image, dimensions: { width: 255, height: 161}
   validates_presence_of :image
  

	

end
