if ENV["AUTOPKGTEST_TMP"]
  ENV["BSFILTER_BIN"] = "/usr/bin/bsfilter"
end

task :default do
  chdir "test" do
    ruby "test.rb", "--verbose"
  end
end
