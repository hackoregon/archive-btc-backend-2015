class CampaignDetailResource < JSONAPI::Resource
  attributes :candidate_name, :committee_name, :race,:website,
  :phone, :total, :total_spent , :grassroots , :instate,
  :filer_id,:election,:party,:num_transactions, :committee_type,
  :committee_subtype, :db_update_status
end
