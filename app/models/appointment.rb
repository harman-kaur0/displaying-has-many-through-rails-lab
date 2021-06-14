class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def day
        date = self.appointment_datetime.to_formatted_s(:long).split(" ");
        date.pop();
        date.join(" ");
    end

    def time
        date = self.appointment_datetime.to_formatted_s(:long).split(" ");
        date.pop();
    end
end
