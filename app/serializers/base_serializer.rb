class BaseSerializer
  def serialized
    object_serialized
  end

  private

  def object_serialized
    nil
  end

  def format_date(date)
    date&.strftime('%d/%m/%y %H:%M:%S') if date
  end
end
