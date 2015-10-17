# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151017195828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "fuzzystrmatch"

  create_table "ac_grass_roots_in_state", id: false, force: :cascade do |t|
    t.float "filer_id"
    t.text  "filer"
    t.text  "candidate_name"
    t.float "total_money"
    t.float "percent_grassroots"
    t.float "percent_instate"
    t.float "total_money_out"
  end

  create_table "access_log", id: false, force: :cascade do |t|
    t.integer  "committee_id"
    t.datetime "date"
  end

  create_table "access_logs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "all_oregon_sum", id: false, force: :cascade do |t|
    t.float "in"
    t.float "out"
    t.float "from_within"
    t.float "to_within"
    t.float "from_outside"
    t.float "to_outside"
    t.float "total_grass_roots"
    t.float "total_from_in_state"
  end

  create_table "all_oregon_sums", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "campaign_detail", id: false, force: :cascade do |t|
    t.text    "candidate_name"
    t.string  "committee_name"
    t.text    "race"
    t.text    "website"
    t.string  "phone"
    t.float   "total"
    t.float   "total_spent"
    t.float   "grassroots"
    t.float   "instate"
    t.integer "filer_id"
    t.text    "election"
    t.text    "party"
    t.integer "num_transactions",  limit: 8
    t.string  "committee_type"
    t.string  "committee_subtype"
    t.text    "db_update_status"
  end

  create_table "campaign_details", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "candidate_by_state", id: false, force: :cascade do |t|
    t.text    "candidate_name"
    t.integer "filer_id"
    t.string  "state"
    t.string  "direction",      limit: 7
    t.float   "value"
  end

  create_table "candidate_by_states", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "candidate_sum_by_date", id: false, force: :cascade do |t|
    t.integer "filer_id"
    t.date    "tran_date"
    t.float   "total_in"
    t.float   "total_out"
  end

  create_table "candidate_sum_by_dates", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cc_grass_roots_in_state", id: false, force: :cascade do |t|
    t.integer "filer_id"
    t.string  "filer"
    t.integer "num_transactions",    limit: 8
    t.float   "in_state"
    t.float   "grass_roots"
    t.float   "total_contributions"
    t.float   "total_money"
    t.float   "total_money_out"
    t.float   "percent_grass_roots"
    t.float   "percent_in_state"
  end

  create_table "cc_grass_roots_in_states", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cc_working_transactions", id: false, force: :cascade do |t|
    t.integer "tran_id"
    t.date    "tran_date"
    t.string  "filer"
    t.string  "contributor_payee"
    t.string  "sub_type"
    t.float   "amount"
    t.integer "contributor_payee_committee_id"
    t.integer "filer_id"
    t.string  "purp_desc"
    t.string  "book_type"
    t.string  "addr_line1"
    t.date    "filed_date"
    t.string  "addr_line2"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
    t.string  "purpose_codes"
    t.string  "direction",                      limit: 7
    t.string  "contributor_payee_class"
  end

  create_table "direction_codes", id: false, force: :cascade do |t|
    t.string "sub_type"
    t.string "direction", limit: 7
  end

  create_table "documentation", id: false, force: :cascade do |t|
    t.text "title"
    t.text "endpoint_name"
    t.text "txt"
  end

  create_table "hack_oregon_db_status", id: false, force: :cascade do |t|
    t.float "ac_grass_roots_in_state"
    t.float "campaign_detail"
    t.float "candidate_by_state"
    t.float "candidate_sum_by_date"
    t.float "cc_grass_roots_in_state"
    t.float "cc_working_transactions"
    t.float "direction_codes"
    t.float "raw_candidate_filings"
    t.float "raw_committees"
    t.float "raw_committees_scraped"
    t.float "raw_committee_transactions"
    t.float "raw_committee_transactions_ammended_transactions"
    t.float "state_translation"
    t.float "working_candidate_committees"
    t.float "working_candidate_filings"
    t.float "working_committees"
    t.float "working_transactions"
    t.date  "date"
    t.text  "event_at_log_time"
    t.float "hack_oregon_db_status"
    t.float "all_oregon_sum"
    t.float "state_sum_by_date"
    t.float "documentation"
    t.float "oregon_by_contributions"
    t.float "oregon_by_purpose_codes"
    t.float "sub_type_from_contributor_payee"
    t.float "oregon_committee_agg"
    t.float "import_dates"
    t.float "raw_committee_transactions_errors"
    t.float "access_log"
    t.float "search_log"
  end

  create_table "import_dates", id: false, force: :cascade do |t|
    t.decimal "id"
    t.date    "scrape_date"
    t.text    "file_name"
  end

  create_table "oregon_by_contributions", id: false, force: :cascade do |t|
    t.string "contribution_type"
    t.float  "total"
  end

  create_table "oregon_by_purpose_codes", id: false, force: :cascade do |t|
    t.text  "purpose_code"
    t.float "total"
  end

  create_table "oregon_committee_agg", id: false, force: :cascade do |t|
    t.string  "contributor_payee"
    t.integer "contributor_payee_committee_id"
    t.float   "sum"
  end

  create_table "raw_candidate_filings", id: false, force: :cascade do |t|
    t.text    "election_txt"
    t.integer "election_year"
    t.text    "office_group"
    t.integer "id_nbr"
    t.text    "office"
    t.text    "candidate_office"
    t.integer "candidate_file_rsn"
    t.text    "file_mthd_ind"
    t.text    "filetype_descr"
    t.text    "party_descr"
    t.text    "major_party_ind"
    t.text    "cand_ballot_name_txt"
    t.text    "occptn_txt"
    t.text    "education_bckgrnd_txt"
    t.text    "occptn_bkgrnd_txt"
    t.text    "school_grade_diploma_degree_certificate_course_of_study"
    t.text    "prev_govt_bkgrnd_txt"
    t.text    "judge_incbnt_ind"
    t.text    "qlf_ind"
    t.date    "filed_date"
    t.date    "file_fee_rfnd_date"
    t.date    "witdrw_date"
    t.boolean "withdrw_resn_txt"
    t.date    "pttn_file_date"
    t.integer "pttn_sgnr_rqd_nbr"
    t.integer "pttn_signr_filed_nbr"
    t.date    "pttn_cmplt_date"
    t.integer "ballot_order_nbr"
    t.text    "prfx_name_cd"
    t.text    "first_name"
    t.text    "mdle_name"
    t.text    "last_name"
    t.text    "sufx_name"
    t.text    "title_txt"
    t.text    "mailing_addr_line_1"
    t.text    "mailing_addr_line_2"
    t.text    "mailing_city_name"
    t.text    "mailing_st_cd"
    t.integer "mailing_zip_code"
    t.integer "mailing_zip_plus_four"
    t.text    "residence_addr_line_1"
    t.text    "residence_addr_line_2"
    t.text    "residence_city_name"
    t.text    "residence_st_cd"
    t.integer "residence_zip_code"
    t.integer "residence_zip_plus_four"
    t.text    "home_phone"
    t.text    "cell_phone"
    t.text    "fax_phone"
    t.text    "email"
    t.text    "work_phone"
    t.text    "web_address"
  end

  create_table "raw_committee_transactions", primary_key: "tran_id", id: :integer, force: :cascade do |t|
    t.integer "original_id"
    t.date    "tran_date"
    t.string  "tran_status"
    t.string  "filer"
    t.string  "contributor_payee"
    t.string  "sub_type"
    t.float   "amount"
    t.float   "aggregate_amount"
    t.integer "contributor_payee_committee_id"
    t.integer "filer_id"
    t.string  "attest_by_name"
    t.date    "attest_date"
    t.string  "review_by_name"
    t.date    "review_date"
    t.date    "due_date"
    t.string  "occptn_ltr_date"
    t.string  "pymt_sched_txt"
    t.string  "purp_desc"
    t.string  "intrst_rate"
    t.string  "check_nbr"
    t.boolean "tran_stsfd_ind"
    t.string  "filed_by_name"
    t.date    "filed_date"
    t.string  "addr_book_agent_name"
    t.string  "book_type"
    t.string  "title_txt"
    t.string  "occptn_txt"
    t.string  "emp_name"
    t.string  "emp_city"
    t.string  "emp_state"
    t.boolean "employ_ind"
    t.boolean "self_employ_ind"
    t.string  "addr_line1"
    t.string  "addr_line2"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
    t.integer "zip_plus_four"
    t.string  "county"
    t.string  "purpose_codes"
    t.string  "exp_date"
  end

  create_table "raw_committee_transactions_ammended_transactions", id: false, force: :cascade do |t|
    t.integer "tran_id"
    t.integer "original_id"
    t.date    "tran_date"
    t.string  "tran_status"
    t.string  "filer"
    t.string  "contributor_payee"
    t.string  "sub_type"
    t.float   "amount"
    t.float   "aggregate_amount"
    t.integer "contributor_payee_committee_id"
    t.integer "filer_id"
    t.string  "attest_by_name"
    t.date    "attest_date"
    t.string  "review_by_name"
    t.date    "review_date"
    t.date    "due_date"
    t.string  "occptn_ltr_date"
    t.string  "pymt_sched_txt"
    t.string  "purp_desc"
    t.string  "intrst_rate"
    t.string  "check_nbr"
    t.boolean "tran_stsfd_ind"
    t.string  "filed_by_name"
    t.date    "filed_date"
    t.string  "addr_book_agent_name"
    t.string  "book_type"
    t.string  "title_txt"
    t.string  "occptn_txt"
    t.string  "emp_name"
    t.string  "emp_city"
    t.string  "emp_state"
    t.boolean "employ_ind"
    t.boolean "self_employ_ind"
    t.string  "addr_line1"
    t.string  "addr_line2"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
    t.integer "zip_plus_four"
    t.string  "county"
    t.string  "purpose_codes"
    t.string  "exp_date"
  end

  create_table "raw_committee_transactions_errors", id: false, force: :cascade do |t|
    t.integer "tran_id"
    t.integer "original_id"
    t.date    "tran_date"
    t.string  "tran_status"
    t.string  "filer"
    t.string  "contributor_payee"
    t.string  "sub_type"
    t.float   "amount"
    t.float   "aggregate_amount"
    t.integer "contributor_payee_committee_id"
    t.integer "filer_id"
    t.string  "attest_by_name"
    t.date    "attest_date"
    t.string  "review_by_name"
    t.date    "review_date"
    t.date    "due_date"
    t.string  "occptn_ltr_date"
    t.string  "pymt_sched_txt"
    t.string  "purp_desc"
    t.string  "intrst_rate"
    t.string  "check_nbr"
    t.boolean "tran_stsfd_ind"
    t.string  "filed_by_name"
    t.date    "filed_date"
    t.string  "addr_book_agent_name"
    t.string  "book_type"
    t.string  "title_txt"
    t.string  "occptn_txt"
    t.string  "emp_name"
    t.string  "emp_city"
    t.string  "emp_state"
    t.boolean "employ_ind"
    t.boolean "self_employ_ind"
    t.string  "addr_line1"
    t.string  "addr_line2"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
    t.integer "zip_plus_four"
    t.string  "county"
    t.string  "purpose_codes"
    t.string  "exp_date"
  end

  create_table "raw_committees", id: false, force: :cascade do |t|
    t.integer "committee_id"
    t.string  "committee_name"
    t.string  "committee_type"
    t.string  "committee_subtype"
    t.string  "candidate_office"
    t.string  "candidate_office_group"
    t.date    "filing_date"
    t.date    "organization_filing Date"
    t.string  "treasurer_first_name"
    t.string  "treasurer_last_name"
    t.string  "treasurer_mailing_address"
    t.string  "treasurer_work_phone"
    t.string  "treasurer_fax"
    t.string  "candidate_first_name"
    t.string  "candidate_last_name"
    t.string  "candidate_maling_address"
    t.string  "candidate_work_phone"
    t.string  "candidate_residence_phone"
    t.string  "candidate_fax"
    t.string  "candidate_email"
    t.string  "active_election"
    t.string  "measure"
  end

  create_table "raw_committees_scraped", id: false, force: :cascade do |t|
    t.text    "name"
    t.integer "id"
    t.text    "acronym"
    t.text    "pac_type"
    t.text    "filing_effective_from"
    t.text    "filing_type"
    t.text    "address"
    t.text    "campaign_phone"
    t.text    "treasurer_name"
    t.text    "treasurer_mailing_address"
    t.text    "treasurer_work_phone_home_phone_fax"
    t.text    "treasurer_email_address"
    t.text    "candidate_name"
    t.text    "candidate_election_office"
    t.text    "candidate_party_affiliation"
    t.text    "candidate_candidate_address"
    t.text    "candidate_work_phone_home_phone_fax"
    t.text    "candidate_mailing_address"
    t.text    "candidate_email_address"
    t.text    "candidate_occupation"
    t.text    "candidate_employer"
    t.text    "measure_election"
    t.text    "measure_support"
    t.text    "measure_details"
    t.text    "committee_type"
  end

  create_table "search_log", id: false, force: :cascade do |t|
    t.text     "search_term"
    t.datetime "date"
  end

  create_table "state_sum_by_date", id: false, force: :cascade do |t|
    t.date  "tran_date"
    t.float "total_in"
    t.float "total_out"
    t.float "total_from_within"
    t.float "total_to_within"
    t.float "total_from_the_outside"
    t.float "total_to_the_outside"
    t.float "total_grass_roots"
    t.float "total_from_in_state"
  end

  create_table "state_translation", id: false, force: :cascade do |t|
    t.string "statefull"
    t.string "abbreviation", limit: 3
  end

  create_table "sub_type_from_contributor_payee", id: false, force: :cascade do |t|
    t.string "contributor_payee"
  end

  create_table "working_candidate_committees", id: false, force: :cascade do |t|
    t.text    "candidate_name"
    t.integer "committee_id"
    t.string  "committee_name"
    t.text    "election_office"
    t.text    "phone"
    t.text    "party_affiliation"
    t.text    "web_address"
  end

  create_table "working_candidate_filings", id: false, force: :cascade do |t|
    t.text    "election_txt"
    t.integer "election_year"
    t.text    "office_group"
    t.integer "id_nbr"
    t.text    "office"
    t.text    "candidate_office"
    t.integer "candidate_file_rsn"
    t.text    "file_mthd_ind"
    t.text    "filetype_descr"
    t.text    "party_descr"
    t.text    "major_party_ind"
    t.text    "cand_ballot_name_txt"
    t.text    "occptn_txt"
    t.text    "education_bckgrnd_txt"
    t.text    "occptn_bkgrnd_txt"
    t.text    "school_grade_diploma_degree_certificate_course_of_study"
    t.text    "prev_govt_bkgrnd_txt"
    t.text    "judge_incbnt_ind"
    t.text    "qlf_ind"
    t.date    "filed_date"
    t.date    "file_fee_rfnd_date"
    t.date    "witdrw_date"
    t.boolean "withdrw_resn_txt"
    t.date    "pttn_file_date"
    t.integer "pttn_sgnr_rqd_nbr"
    t.integer "pttn_signr_filed_nbr"
    t.date    "pttn_cmplt_date"
    t.integer "ballot_order_nbr"
    t.text    "prfx_name_cd"
    t.text    "first_name"
    t.text    "mdle_name"
    t.text    "last_name"
    t.text    "sufx_name"
    t.text    "title_txt"
    t.text    "mailing_addr_line_1"
    t.text    "mailing_addr_line_2"
    t.text    "mailing_city_name"
    t.text    "mailing_st_cd"
    t.integer "mailing_zip_code"
    t.integer "mailing_zip_plus_four"
    t.text    "residence_addr_line_1"
    t.text    "residence_addr_line_2"
    t.text    "residence_city_name"
    t.text    "residence_st_cd"
    t.integer "residence_zip_code"
    t.integer "residence_zip_plus_four"
    t.text    "home_phone"
    t.text    "cell_phone"
    t.text    "fax_phone"
    t.text    "email"
    t.text    "work_phone"
    t.text    "web_address"
  end

  create_table "working_committees", id: false, force: :cascade do |t|
    t.integer "committee_id"
    t.string  "committee_name"
    t.string  "committee_type"
    t.string  "committee_subtype"
    t.text    "party_affiliation"
    t.string  "phone"
    t.text    "election_office"
    t.text    "candidate_name"
    t.string  "candidate_email_address"
    t.text    "candidate_work_phone_home_phone_fax"
    t.string  "candidate_address"
    t.text    "treasurer_name"
    t.text    "treasurer_work_phone_home_phone_fax"
    t.string  "treasurer_mailing_address"
    t.text    "web_address"
    t.string  "measure"
    t.text    "simple_election"
    t.text    "db_update_status"
  end

  create_table "working_transactions", id: false, force: :cascade do |t|
    t.integer "tran_id"
    t.date    "tran_date"
    t.string  "filer"
    t.string  "contributor_payee"
    t.string  "sub_type"
    t.float   "amount"
    t.integer "contributor_payee_committee_id"
    t.integer "filer_id"
    t.string  "purp_desc"
    t.string  "book_type"
    t.string  "addr_line1"
    t.date    "filed_date"
    t.string  "addr_line2"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
    t.string  "purpose_codes"
    t.string  "direction",                      limit: 7
    t.string  "contributor_payee_class"
  end

end
