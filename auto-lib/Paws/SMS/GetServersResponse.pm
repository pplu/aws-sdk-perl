
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




=head2 NextToken => Str




=head2 ServerCatalogStatus => Str



Valid values are: C<"NOT_IMPORTED">, C<"IMPORTING">, C<"AVAILABLE">, C<"DELETED">, C<"EXPIRED">
=head2 ServerList => ArrayRef[L<Paws::SMS::Server>]




=head2 _request_id => Str


=cut

1;