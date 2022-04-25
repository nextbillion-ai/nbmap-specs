Pod::Spec.new do |spec|

  spec.name                     = "NextbillionMaps"
  spec.version                  = "0.1.0"
  spec.summary                  = "Private iOS Maps SDK pod by Nextbillion AI"

 
  spec.description              = <<-DESC
                  iOS Maps SDK, Directions, DistanceMatrix and Matching APIs that provided by Nextbillion AI
                                DESC

  spec.homepage                 = "https://github.com/nextbillion-ai/nb-maps-ios-pod"

  spec.license                  = { :type => 'MIT', :text => <<~LICENSE

  This project is licensed under the MIT license.

  Copyright (c) 2021 NextBillion AI 
  Dan <dan@nextbillion.ai>

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
  LICENSE
  }

  spec.author                   = { "Dan" => "dan@nextbillion.ai" }
  spec.platform                 = :ios
  spec.ios.deployment_target    = "9.0"


  spec.source                   = { :http => 'https://github.com/nextbillion-ai/nb-maps-ios-pod/raw/master/nbmaps-v0.1.0.zip' }



  spec.pod_target_xcconfig      = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig     = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  # ――― Dynamic Framework ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.ios.vendored_frameworks  = "Nbmap.framework"

end