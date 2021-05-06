
package Paws::CognitoIdp::CreateResourceServerResponse;
  use Moose;
  has ResourceServer => (is => 'ro', isa => 'Paws::CognitoIdp::ResourceServerType', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateResourceServerResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceServer => L<Paws::CognitoIdp::ResourceServerType>

The newly created resource server.


=head2 _request_id => Str


=cut

1;