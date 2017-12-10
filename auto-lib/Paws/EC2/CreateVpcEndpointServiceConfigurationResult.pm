
package Paws::EC2::CreateVpcEndpointServiceConfigurationResult;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest',]);
  has ServiceConfiguration => (is => 'ro', isa => 'Paws::EC2::ServiceConfiguration', request_name => 'serviceConfiguration', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpcEndpointServiceConfigurationResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request.


=head2 ServiceConfiguration => L<Paws::EC2::ServiceConfiguration>

Information about the service configuration.


=head2 _request_id => Str


=cut

