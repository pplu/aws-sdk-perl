
package Paws::RDS::CreateDBProxyEndpointResponse;
  use Moose;
  has DBProxyEndpoint => (is => 'ro', isa => 'Paws::RDS::DBProxyEndpoint');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBProxyEndpointResponse

=head1 ATTRIBUTES


=head2 DBProxyEndpoint => L<Paws::RDS::DBProxyEndpoint>

The C<DBProxyEndpoint> object that is created by the API operation. The
DB proxy endpoint that you create might provide capabilities such as
read/write or read-only operations, or using a different VPC than the
proxy's default VPC.


=head2 _request_id => Str


=cut

