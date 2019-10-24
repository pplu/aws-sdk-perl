package Paws::ApiGatewayManagement::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type ApiGatewayManagement_ForbiddenException, { class => 'Paws::ApiGatewayManagement::ForbiddenException' };
  class_type ApiGatewayManagement_GoneException, { class => 'Paws::ApiGatewayManagement::GoneException' };
  class_type ApiGatewayManagement_LimitExceededException, { class => 'Paws::ApiGatewayManagement::LimitExceededException' };
  class_type ApiGatewayManagement_PayloadTooLargeException, { class => 'Paws::ApiGatewayManagement::PayloadTooLargeException' };
  class_type ApiGatewayManagement_PostToConnectionRequest, { class => 'Paws::ApiGatewayManagement::PostToConnectionRequest' };

1;
