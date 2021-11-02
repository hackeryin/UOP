#
#  Be sure to run `pod spec lint kakaosdk.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "UOP"
  s.version      = "1.0.3"
  s.summary      = "the sdk library of the xp login sdk pod spec."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
        the sdk library of the xp login sdk pod spec
                   DESC

  s.homepage     = "ssh://git@fantang.f3322.net:58178/liyajie/podrepo.git"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "xiangyuan" => "liyajie1209@gmail.com" }
  # Or just: s.author    = "xiangyuan"
  # s.authors            = { "xiangyuan" => "liyajie1209@gmail.com" }
  # s.social_media_url   = "http://twitter.com/xiangyuan"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  s.platform     = :ios

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "git@github.com:hackeryin/UOP.git"}


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  # s.source_files  = "Classes", "Classes/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"
  # s.source_files = "hero/libWeiboSDK/*.h", "hero/WeChatSDK/*.h"
  # s.public_header_files = "hero/libWeiboSDK/*.h","hero/WeChatSDK/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  s.resources = ["UOP/APMInsightCore.bundle", "UOP/APMInsightCrash.bundle", "UOP/GMReplayFXBundle.bundle", "UOP/RangersAppLog.bundle", "UOP/UOPSDKResource.bundle"]
  # s.resources = ["hero/Cmge.framework/CMGE_Common.bundle","hero/Cmge.framework//CMGE_Login.bundle"]
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  s.libraries = 'z' , "c++abi" ,"c++"
  # s.framework  = "SomeFramework"
  s.frameworks = "Accelerate","Metal"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"
  s.vendored_frameworks = 'UOP/UnionOpenPlatform.framework'
  # spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
  build_script = <<-EOF
    #!/usr/bin/env bash

    APMSDKAssetCrashPath="${PODS_ROOT}/UOP/UOP"
    addressRangeFileName="${APMSDKAssetCrashPath}/APMInsightCrash.bundle/APMInsightSDKAddressRange.plist"

    plistLineNum=0
    keysLineNum=()
    arrayStartLineNum=()
    arrayEndLineNum=()
    while read line
    do
        ((plistLineNum++))

        if [[ $line =~ "<key>" ]]; then
            keysLineNum[${#keysLineNum[@]}]=$plistLineNum
        elif [[ $line =~ "<array>" ]]; then
            arrayStartLineNum[${#arrayStartLineNum[@]}]=$plistLineNum
        elif [[ $line =~ "</array>" ]]; then
            arrayEndLineNum[${#arrayEndLineNum[@]}]=$plistLineNum
        fi
    done < "${addressRangeFileName}"

    errorCount=$[${#keysLineNum[@]}-${#arrayEndLineNum[@]}]
    if [[ ${errorCount} -gt 0 ]]; then
        errorLineNum=${keysLineNum[$[${#keysLineNum[@]}-${errorCount}]]}
        sed -i "" "${errorLineNum},\$d" "${addressRangeFileName}"
    else
        sed -i "" '/^<\/dict>/,$d' "${addressRangeFileName}"
    fi

    function combineAddresses(){
        lastLineNum="0000"
        startAddress="0x0000"
        lastAddr="0x0000"
        lastSize="0x0000"
        while read line
        do
            read tmpLineNum tmpAddr tmpSize <<< $(echo $(echo ${line} | awk -F "[: ]" '{print $1" "$2" "$3}'))
            
            if [[ "${lastLineNum}" == "0000" ]]; then
                startAddress=${tmpAddr}
            else
                if [[ ! "${tmpLineNum}" == "$[${lastLineNum}+1]" ]]; then
                    endAddress=`printf "0x%08x" $((${lastAddr}+${lastSize}))`
                    echo "${lastLineNum}:${startAddress} ${endAddress}" >> "$2"
                    startAddress=${tmpAddr}
                fi
            fi

            lastLineNum=${tmpLineNum}
            lastAddr=${tmpAddr}
            lastSize=${tmpSize}
        done < "$1"

        if [[ ! "${startAddress}" == "0x0000"  ]];
        then
            endAddress=`printf "0x%08x" $((${lastAddr}+${lastSize}))`
            echo "${lastLineNum}:${startAddress} ${endAddress}" >> "$2"
        fi

    }

    function writeAddressRangeFileFromLinkMap(){

        if [[ ! -f "$3" ]]; then
            echo "LinkMap for $4 not found!!!"
            return
        fi
        
        OBJSTART=`date +%s`;

        objectFile="${APMSDKAssetCrashPath}/APMInsightSDKAddressRangeTmp1.txt"
        if [[ -f "$objectFile" ]]; then
            rm "${objectFile}"
        fi
        touch "${objectFile}"

        grep -E "^\[.*\].*\/($1)\/.*" $3 >> "${objectFile}"

        OBJEND=`date +%s`;
        OBJTime=$((OBJEND-OBJSTART))
        echo "Grep object files cost $OBJTime s"

        symbolFile="${APMSDKAssetCrashPath}/APMInsightSDKAddressRangeTmp2.txt"
        if [[ -f "$symbolFile" ]]; then
            rm "${symbolFile}"
        fi
        touch "${symbolFile}"
        
        symbolsLineNum=$(grep -E -n "# Symbols:" $3 | head -1 | cut -d ":" -f 1)
        deadLineNum=$(grep -E -n "# Dead Stripped Symbols:" $3 | head -1 | cut -d ":" -f 1)
        
        allSymbols="${APMSDKAssetCrashPath}/APMInsightSDKAddressAllSymbols.txt"
        if [[ -f "${allSymbols}" ]]; then
            rm "${allSymbols}"
        fi
        touch "${allSymbols}"

        symbolTempFile="${APMSDKAssetCrashPath}/APMInsightSDKAddressRangeSymbolTemp.txt"
        if [[ -f "${symbolTempFile}" ]]; then
            rm "${symbolTempFile}"
        fi
        touch "${symbolTempFile}"

        sed -n "${symbolsLineNum},${deadLineNum}p" $3 > ${allSymbols}

        grep -v "0x.*0x.*(literal\sstring\:.?|CFString|objc-cat-list|pointer-to-literal-cstring|_OBJC_IVAR_\$_.*)" ${allSymbols} > ${symbolTempFile}

        rm "${allSymbols}"
        
        TEXTEND=`date +%s`;
        TEXTTime=$((TEXTEND-OBJEND))
        echo "Grep text section cost $TEXTTime s"

        regular="0000"
        count=0
        while read line
        do
            count=$[count+1]
            if [[ $count -ge 500 ]]; then
                regular="${regular})\]"
                grep -E -n "${regular}" ${symbolTempFile} >> $symbolFile
                regular="0000"
                count=0
            fi
            
            serial=`echo ${line} | cut -d "]" -f 1 | cut -b 2-`
            if [[ "${regular}" == "0000" ]]; then
                regular="0x.*0x.*\[(\s?${serial}"
            else
                regular="${regular}|\s?${serial}"
            fi
        done < $objectFile
        regular="${regular})\]"
        grep -E -n "${regular}" ${symbolTempFile} >> $symbolFile

        SYBEND=`date +%s`;
        SYBTime=$((SYBEND-TEXTEND))
        echo "Grep SDK symbols cost $SYBTime s"

        rm "${symbolTempFile}"

        sort -n -k 1 -t : $symbolFile -o $symbolFile

        SORTEND=`date +%s`;
        SORTTime=$((SORTEND-SYBEND))
        echo "sort SDK symbols cost $SORTTime s"
        
        if [[ -f "${objectFile}" ]]; then
            rm "${objectFile}"
        fi

        startLineNum=0
        endLineNum=0
        tempLineNum=0
        while read line
        do
            ((tempLineNum++))
            if [ "${line}" == "<key>${2}_${4}</key>" ]
            then
                startLineNum=$tempLineNum
                continue
            fi
            
            if [ ! "$startLineNum" == 0 ]
            then
                if [ "${line}" == "</array>" ]
                then
                    endLineNum=$tempLineNum
                    break
                fi
            fi
        done < "${addressRangeFileName}"
        sed -i "" "$startLineNum,${endLineNum}d" "${addressRangeFileName}"

        echo "<key>${2}_${4}</key>
    <array>" >> "${addressRangeFileName}"
        
        threadCount=10 
        linesCount=`awk 'END{print NR}' ${symbolFile}`
        lineExceptThread=`awk 'BEGIN{printf "%.2f\n",'$linesCount'/'$threadCount'}'`
        linesCountPerFile=`echo $((${lineExceptThread//.*/+1}))`
        cd $APMSDKAssetCrashPath
        split -l ${linesCountPerFile} -a 1 ${symbolFile} AddressMergeTmp_

        for ((i=0;i<${threadCount};i++))
        do
        {
            suffixNum=$[i+97]
            suffix=$(printf \\x`printf %x $suffixNum`)
            if [[ -f "AddressMergeTmp_${suffix}" ]]; then
                touch "AddressMerge_$i"
                combineAddresses AddressMergeTmp_${suffix} AddressMerge_$i
                rm "AddressMergeTmp_${suffix}"
            fi
        }&
        done
        wait
        
        MERGEEND=`date +%s`;
        MERGETime=$((MERGEEND-SORTEND))
        echo "Merge part cost $MERGETime s"

        startAddress="0x0000"
        endAddress="0x0000"
        for ((i=0;i<${threadCount};i++))
        do
        {
            if [[ -f "AddressMerge_$i" ]]; then
                while read line
                do
                    read tmpStartAddr tmpEndAddr <<< $(echo $(echo ${line} | awk -F "[: ]" '{print $2" "$3}'))
                    
                    if [ "${startAddress}" == "0x0000" ]
                    then
                        startAddress=${tmpStartAddr}
                        endAddress=${tmpEndAddr}
                    else
                        if [[ $(echo "${tmpStartAddr}" | tr '[:upper:]' '[:lower:]') == $(echo "${endAddress}" | tr '[:upper:]' '[:lower:]') ]]
                        then
                            endAddress=${tmpEndAddr}
                        else
                            thisSize=`printf "0x%08x" $((${endAddress}-${startAddress}))`
                            echo "<string>${startAddress}+${thisSize}</string>" >> "${addressRangeFileName}"
                            startAddress=${tmpStartAddr}
                            endAddress=${tmpEndAddr}
                        fi
                    fi
                done < "AddressMerge_$i"
                rm "AddressMerge_$i"
            fi
        }
        done
        if [[ ! "${startAddress}" == "0x0000"  ]]
        then
            thisSize=`printf "0x%08x" $((${endAddress}-${startAddress}))`
            echo "<string>${startAddress}+${thisSize}</string>" >> "${addressRangeFileName}"
        fi

        MERGEALLEND=`date +%s`;
        MERGEALLTime=$((MERGEALLEND-MERGEEND))
        echo "Merge all cost $MERGEALLTime s"

        echo "</array>" >> "${addressRangeFileName}"
        
        if [[ -f "${symbolFile}" ]]; then
            rm "${symbolFile}"
        fi
        
    }

    function writeAddressRangeFile(){

        if [[ -z "$1" ]] || [[ -z "$2" ]]; then
            echo "SDKName or SDKAid is empty, return"
            return
        fi

        START=`date +%s`;

        # LINKMAP文件路径
        LINKMAP_ARM64=${LD_MAP_FILE_PATH//${CURRENT_ARCH}/arm64}
        LINKMAP_ARMV7=${LD_MAP_FILE_PATH//${CURRENT_ARCH}/armv7}

        if [[ -z "$LINKMAP_ARM64" ]] && [[ -z "$LINKMAP_ARMV7" ]]; then
            echo "LINKMAP path is empty, return"
            return
        fi

        writeAddressRangeFileFromLinkMap $1 $2 $LINKMAP_ARM64 "arm64"

        writeAddressRangeFileFromLinkMap $1 $2 $LINKMAP_ARMV7 "armv7"


        echo "SDK $2 write addressRange end"
        END=`date +%s`;
        time=$((END-START))
        echo "SDK $2 cost ${time}s"
    }

    # $SDKAid是在APMInsight平台上面申请的APPId，每个Aid输出一个addressRange文件，如果有多个Aid，请对每个Aid调用一次writeAddressRangeFile方法
    # 如果多个SDK归属于同一个aid，则$SDKName中使用'|'把这些SDKName分隔开，即SDKName="SDK1|SDK2|SDK3"
    SDKAid="234224"
    SDKName="RangersAPM|UnionOpenPlatform|UnionOpenPlatform.framework"
    writeAddressRangeFile $SDKName $SDKAid
    #在这里添加其他的writeAddressRangeFile方法调用
    #writeAddressRangeFile $SDKName $SDKAid

    echo "</dict></plist>" >> "${addressRangeFileName}"
  EOF
  s.script_phase = { :name => 'rebuild_a', :script => build_script, :execution_position => :after_compile }

end
