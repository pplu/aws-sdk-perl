
package Paws::RDS::ModifyDBProxyEndpointResponse;
  use Moose;
  has DBProxyEndpoint => (is => 'ro', isa => 'Paws::RDS::DBProxyEndpoint');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBProxyEndpointResponse

=head1 ATTRIBUTES


=head2 DBProxyEndpoint => L<Paws::RDS::DBProxyEndpoint>

The C<DBProxyEndpoint> object representing the new settings for the DB
proxy endpoint.


=head2 _request_id => Str


=cut

