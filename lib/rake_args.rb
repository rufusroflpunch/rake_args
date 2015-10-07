module Rake::DSL
  def task_args(*arg_names)
    args = {}
    argv = ARGV.drop 1
    
    argv.each do |a|
      arg_name = arg_names.shift
      args[arg_name] = a if arg_name
      task a.to_sym {}
    end

    args
  end
end
