class RawCommitteeTransactionSerializer < ActiveModel::Serializer
  attributes :id, :tran_id, :tran_date, :filer, :contributor_payee, :amount, :purpose_codes, :zip
end
