Rails.application.configure do
  config.crms = {
    staff: { host: "crms.example.com", path: "" },
    admin: { host: "crms.example.com", path: "admin" },
    customer: { host: "example.com", path: "mypage" }
  }
end
