class ReportsService

  def self.overlap_report
    sql = %{
    select roster1.*
    FROM starship_rosters as roster1
    where exists (select 1
                  from  starship_rosters as roster2
                  where tsrange(roster2.start_date, roster2.end_date, '[]')
                     && tsrange(roster1.start_date, roster1.end_date, '[]')
                    and roster2.feature_id = roster1.feature_id
                    and roster2.id <> roster1.id);
    }

    execute(sql)
  end

  private

  def self.execute(sql)
    results = ActiveRecord::Base.connection.exec_query(sql)

    if results.present?
      return results
    else
      return nil
    end
  end

end
