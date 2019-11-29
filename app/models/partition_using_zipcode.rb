class PartitionedByZipcode < Partitioned::ByIntegerField
  self.abstract_class = true

  def self.partition_zipcode
    :zipcode
  end

  partitioned do |partition|
    partition.index :id, unique: true
  end
end
