
package Aws::EC2::CreateCustomerGateway {
  use Moose;
  has BgpAsn => (is => 'ro', isa => 'Int', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has PublicIp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'IpAddress' , required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomerGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateCustomerGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;