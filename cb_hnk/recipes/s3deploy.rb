include_recipe 'deploy'

git "#{current_release}/#{repo[:path]}" do
    repository repo[:repository]
    revision repo[:branch]
    action :sync
    ignore_failure true
end


node[:deploy].each do |application, deploy|

  if !deploy[:environment_variables].has_key?("S3BUCKET") || deploy[:environment_variables][:S3BUCKET].empty?
    Chef::Log.info("Skipping wk_common::s3bucket for application #{application} - it doesn't have an S3BUCKET environment variable")
    next
  end

  opsworks_deploy_dir do
    user deploy[:user]
    group deploy[:group]
    path deploy[:deploy_to]
  end

end

