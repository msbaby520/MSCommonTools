Pod::Spec.new do |s|
    s.name         = "MSCommonTools"
    s.version      = "1.0.0"
    s.summary      = "常用工具类"
    s.homepage     = "https://github.com/msbaby520/MSCommonTools"
    s.license      = {:type=>"MIT",:file=>"LICENSE"}
    s.authors      = {"msbaby" => "msbaby_jason@163.com"}
    s.platform     = :ios, "9.0"
    s.source       = {:git => "https://github.com/msbaby520/MSCommonTools.git", :tag => s.version}
    s.source_files = "MSTools", "MSCommonTools/MSTools/**/*.{h}"
    s.requires_arc = true
end