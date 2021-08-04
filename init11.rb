#! /usr/bin/ruby

append = ARGV.first
type = ''
# e,m,h | easy,meduim,hard
if append.nil?
    type = 'easy'
else
    if append == 'e' || append == 'easy'
        type = 'easy'
    elsif append == 'm' || append == 'meduim'
        type = 'meduim'
    elsif append == 'h' || append == 'hard'
        type = 'hard'
    else
        type = append.to_s
    end
end

puts "Current difficulty is [#{type}]"

puts ">>> Input topic name:"
# [解决 ARGV 和 gets 一起使用的问题]https://blog.csdn.net/ye_i_qi/article/details/51775992 
name = $stdin.gets.chomp

cur_path = Dir.pwd + '/topics/'

# 判断是否存在这个路径，没有则创建
if not File.exist? cur_path
    Dir.mkdir cur_path
end

puts "Current path: #{cur_path}"

# 遍历当前文件夹，取出目前最大的topic数
max = 0
Dir.foreach(cur_path) do |x|
    if x == '.' or x == '..'
        next
    end
    if File.directory?(cur_path + "/#{x}") and x.match('topic*')
        #topic-x：-> topic-x
        topic = x.split("：").first
        n = topic.sub('topic-', '')
        if n.to_i > max.to_i 
            max = n
        end
    end
end

target_dir_path = cur_path + "/topic-#{max.to_i+1}：[#{type}]#{name}"
Dir.mkdir(target_dir_path)

puts "Create dir named: #{name} success!"

if not File.exist?(target_dir_path + '/MyPlayground.playground')
    playground_dir = target_dir_path + '/MyPlayground.playground'
    Dir.mkdir(playground_dir)
    # Contents.swift
    # contents.xcplayground
    # timeline.xctimeline
    File.open(playground_dir + '/Contents.swift', 'w+') do |f|
        f.write('import UIKit')
    end
    File.open(playground_dir + '/contents.xcplayground', 'w+') do |f|
        f.write("<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>
        <playground version='5.0' target-platform='ios' buildActiveScheme='true' executeOnSourceChanges='false' importAppTypes='true'>
            <timeline fileName='timeline.xctimeline'/>
        </playground>")
    end
    File.open(playground_dir + '/timeline.xctimeline', 'w+') do |f|
        f.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>
        <Timeline
           version = \"3.0\">
           <TimelineItems>
           </TimelineItems>
        </Timeline>")
    end
    puts "Create file MyPlayground.playground"
end

if not File.exist?(target_dir_path + '/README.md')
    f=File.new(target_dir_path + '/README.md', 'w+')
    puts "Create file README.md"
end

puts 'Start open MyPlayground.playground'
# open "file_path", 处理文件名带有空格的问题
system("open \"#{target_dir_path + '/MyPlayground.playground'}\"")

