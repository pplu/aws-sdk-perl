
package Paws::EC2::CreateVpcEndpointResult;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest',]);
  has VpcEndpoint => (is => 'ro', isa => 'Paws::EC2::VpcEndpoint', request_name => 'vpcEndpoint', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpcEndpointResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request.



=head2 VpcEndpoint => L<Paws::EC2::VpcEndpoint>

Information about the endpoint.




=cut

