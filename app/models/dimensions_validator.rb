class DimensionsValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if record.send("#{attribute}?".to_sym) &&  value.queued_for_write[:original]
      dimensions = Paperclip::Geometry.from_file(value.queued_for_write[:original].path)
      width = options[:width]
      height = options[:height]

      record.errors[attribute] << "Lo ancho de la foto deberia ser#{width}px" unless dimensions.width == width
      record.errors[attribute] << "La altura de la foto deberia ser#{height}px" unless dimensions.height == height
    end
  end
end

