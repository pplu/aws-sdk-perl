package Paws::CUR::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type CUR_DeleteReportDefinitionRequest, { class => 'Paws::CUR::DeleteReportDefinitionRequest' };
  class_type CUR_DeleteReportDefinitionResponse, { class => 'Paws::CUR::DeleteReportDefinitionResponse' };
  class_type CUR_DescribeReportDefinitionsRequest, { class => 'Paws::CUR::DescribeReportDefinitionsRequest' };
  class_type CUR_DescribeReportDefinitionsResponse, { class => 'Paws::CUR::DescribeReportDefinitionsResponse' };
  class_type CUR_DuplicateReportNameException, { class => 'Paws::CUR::DuplicateReportNameException' };
  class_type CUR_InternalErrorException, { class => 'Paws::CUR::InternalErrorException' };
  class_type CUR_ModifyReportDefinitionRequest, { class => 'Paws::CUR::ModifyReportDefinitionRequest' };
  class_type CUR_ModifyReportDefinitionResponse, { class => 'Paws::CUR::ModifyReportDefinitionResponse' };
  class_type CUR_PutReportDefinitionRequest, { class => 'Paws::CUR::PutReportDefinitionRequest' };
  class_type CUR_PutReportDefinitionResponse, { class => 'Paws::CUR::PutReportDefinitionResponse' };
  class_type CUR_ReportDefinition, { class => 'Paws::CUR::ReportDefinition' };
  class_type CUR_ReportLimitReachedException, { class => 'Paws::CUR::ReportLimitReachedException' };
  class_type CUR_ValidationException, { class => 'Paws::CUR::ValidationException' };

1;
