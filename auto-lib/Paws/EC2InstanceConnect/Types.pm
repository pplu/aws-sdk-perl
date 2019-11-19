package Paws::EC2InstanceConnect::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type EC2InstanceConnect_AuthException, { class => 'Paws::EC2InstanceConnect::AuthException' };
  class_type EC2InstanceConnect_EC2InstanceNotFoundException, { class => 'Paws::EC2InstanceConnect::EC2InstanceNotFoundException' };
  class_type EC2InstanceConnect_InvalidArgsException, { class => 'Paws::EC2InstanceConnect::InvalidArgsException' };
  class_type EC2InstanceConnect_SendSSHPublicKeyRequest, { class => 'Paws::EC2InstanceConnect::SendSSHPublicKeyRequest' };
  class_type EC2InstanceConnect_SendSSHPublicKeyResponse, { class => 'Paws::EC2InstanceConnect::SendSSHPublicKeyResponse' };
  class_type EC2InstanceConnect_ServiceException, { class => 'Paws::EC2InstanceConnect::ServiceException' };
  class_type EC2InstanceConnect_ThrottlingException, { class => 'Paws::EC2InstanceConnect::ThrottlingException' };

1;
