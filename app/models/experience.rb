class EndTimeValidator < ActiveModel::Validator
  def validate(record)
    if record.start_date and record.end_date
      if record.start_date > record.end_date
        record.errors[:base] << "End date couldn't be earlier than start date"
      end
      if DateTime.current < record.end_date
        record.errors[:base] << "End date couldn't be in the future"
      end
    end
  end
end

class Experience < ActiveRecord::Base
  validates :company, :description, :start_date, presence: true
  validates_with EndTimeValidator
end
