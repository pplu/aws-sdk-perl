
package Aws::EC2::ModifyNetworkInterfaceAttribute {
  use Moose;
  has Attachment => (is => 'ro', isa => 'Aws::EC2::NetworkInterfaceAttachmentChanges', traits => ['NameInRequest'], request_name => 'attachment' );
  has Description => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['NameInRequest'], request_name => 'description' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkInterfaceId' , required => 1);
  has SourceDestCheck => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue', traits => ['NameInRequest'], request_name => 'sourceDestCheck' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyNetworkInterfaceAttribute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;