
package Paws::RDS::DeleteDBProxyEndpointResponse;
  use Moose;
  has DBProxyEndpoint => (is => 'ro', isa => 'Paws::RDS::DBProxyEndpoint');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteDBProxyEndpointResponse

=head1 ATTRIBUTES


=head2 DBProxyEndpoint => L<Paws::RDS::DBProxyEndpoint>

The data structure representing the details of the DB proxy endpoint
that you delete.


=head2 _request_id => Str


=cut

