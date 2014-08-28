
package Aws::EC2::CreateDhcpOptions {
  use Moose;
  has DhcpConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::EC2::DhcpConfiguration]', traits => ['NameInRequest'], request_name => 'DhcpConfiguration' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDhcpOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateDhcpOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;