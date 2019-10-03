class ReportsService

  def self.overlap_report
    sql = %{
    SELECT roster1.id, roster1.start_date, roster2.end_date, roster2.id, roster2.start_date, roster2.end_date
    FROM starship_rosters as roster1, starship_rosters as roster2
    WHERE exists (SELECT 1
                  FROM  starship_rosters as roster2
                  WHERE roster1.start_date BETWEEN roster1.start_date AND roster1.end_date
			            OR    roster2.end_date BETWEEN roster1.start_date AND roster1.end_date
			            OR    roster1.start_date BETWEEN roster2.start_date AND roster2.end_date
			            OR    roster1.end_date BETWEEN roster2.start_date AND roster2.end_date
                  AND   roster2.id != roster1.id);
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
