
package Paws::CognitoIdp::ListResourceServersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceServers => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::ResourceServerType]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListResourceServersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token.


=head2 B<REQUIRED> ResourceServers => ArrayRef[L<Paws::CognitoIdp::ResourceServerType>]

The resource servers.


=head2 _request_id => Str


=cut

1;