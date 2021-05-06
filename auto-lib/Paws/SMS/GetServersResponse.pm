
package Paws::SMS::GetServersResponse;
  use Moose;
  has LastModifiedOn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedOn' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ServerCatalogStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serverCatalogStatus' );
  has ServerList => (is => 'ro', isa => 'ArrayRef[Paws::SMS::Server]', traits => ['NameInRequest'], request_name => 'serverList' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetServersResponse

=head1 ATTRIBUTES


=head2 LastModifiedOn => Str

The time when the server was last modified.


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
null when there are no more results to return.


=head2 ServerCatalogStatus => Str

The status of the server catalog.

Valid values are: C<"NOT_IMPORTED">, C<"IMPORTING">, C<"AVAILABLE">, C<"DELETED">, C<"EXPIRED">
=head2 ServerList => ArrayRef[L<Paws::SMS::Server>]

Information about the servers.


=head2 _request_id => Str


=cut

1;