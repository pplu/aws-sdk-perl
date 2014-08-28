
package Aws::EC2::DescribeNetworkInterfaceAttribute {
  use Moose;
  has Attachment => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Groups => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'GroupSet' );
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has SourceDestCheck => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNetworkInterfaceAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeNetworkInterfaceAttributeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
