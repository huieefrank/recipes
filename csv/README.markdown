��������⣬���ݱ���csv�ļ���inport��export
 
ʹ�ã�
 $gem install fastercsv
 
1 ȷ�����ݱ�ṹ��$ruby script/generate scaffold .....

2 index.html�ļ��У����� upload_form ������һ����Ϊwether_dataʵ����������
  wether_data[file_data]����������ʱ�洢csv�ļ���

3 controller�ж���import������ params[:weather_data][:file_data]��������������,
   ����FieldInfo object��header��������ֵ��ת��Ϊ��Ҫ�ĸ�ʽ��
   ���д������ݵ����ݱ�
   
4 export���� ��csv�м���������Ϣ����ȡ���ݿ��е����ݣ����м���csv���������ݵ�����������أ�
 