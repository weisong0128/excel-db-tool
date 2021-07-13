#!/bin/bash
CUR_DIR=$(cd "$(dirname $0)"; pwd)
export in_excel_name=$1
export in_sheet_index=$2
echo "-----------------start.sh $in_excel_name $in_sheet_index---------------------"

check_param_num()
{
   if [ $# -ne 2 ]; then
      echo -e "\033[31m Input error ! You must input two params !\033[0m"
      echo -e "\033[31m Example:\033[0m"
      echo -e "\033[31m sh start.sh xxx_excel_name.xls xxx_begin_sheet_index\033[0m"
      exit 1
   fi
}

check_param_num $*
${JAVA_HOME}/bin/java -Xms512M -Xmx512M -jar $CUR_DIR/excel-db-tool-1.0-SNAPSHOT.jar "$@"