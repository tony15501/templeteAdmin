class Home < ActiveRecord::Base
	 has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/logo.png"

	 has_attached_file :slider, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/1.png"


  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/


  # validates :promocional, uniqueness:{message: "No puede estar repetido"}, presence: {message: "el campo debe ser obligatorio"}

 
	validates_attachment :logo,  :presence => true,
  :content_type => { :content_type => ["image/png", "image/jpeg", "image/jpg"] },
  :size => { :in => 0..1.megabytes}

  validates_attachment :slider,  :presence => true,
  :content_type => { :content_type => ["image/png", "image/jpeg", "image/jpg"] },
  :size => { :in => 0..1.megabytes}

 

  validates :logo, dimensions: { width: 103, height: 39 }
  validates :slider, dimensions: { width: 495, height: 224 }

  validates_presence_of :logo
  validates_presence_of :slider
  

end
