class Project 

    attr_reader :title


    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
       array = ProjectBacker.all.select do |backed_project|
            backed_project.project == self
        end 
        array.map do |row|
            row.backer
        end

    end



end
