
require 'xcodeproj'

puts  ">>>输入文件名:"
proj_type = $stdin.gets.chomp

cur_path = Dir.pwd + "/#{proj_type}"

#如果 path 存在，则返回 true。
if not File.exist? cur_path
    #创建目录
    Dir.mkdir(cur_path)
end

puts <<DESC
创建文件夹成功
>>> 输入project的name:
DESC

proj_name = $stdin.gets.chomp

if not File.exist? (cur_path + "/#{proj_name}.xcodeproj")
    
    proj_path = cur_path + "/#{proj_name}"

    xcodeproj_path = cur_path + "/#{proj_name}.xcodeproj"
    
    project = Xcodeproj::Project.new(xcodeproj_path)
    project_target =project.new_target(:command,proj_name,:osx,nil,nil,:swift)

    #新建main.swift
    xcodeproj_mainpath = cur_path + "/main.swift"
    File.open(xcodeproj_mainpath, 'w+') do |f|
        f.write('import Foundation')
        f.write("\n\n")
        f.write "print(\"Hello world!\")"
    end



    # #找到要插入的group (参数中true表示如果找不到group，就创建一个group)
    # group = project.main_group.find_subpath(File.join(proj_name),true)
    # #向group中增加文件引用（.h文件只需引用一下，.m引用后还需add一下）
    # file_ref = group.new_reference("#{proj_path}/main.swift")

    file_ref = project.main_group.new_reference(xcodeproj_mainpath)
    project_target.add_file_references([file_ref])


    project.save
end