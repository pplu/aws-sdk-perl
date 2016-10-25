
package Paws::SMS::GetServersResponse;
  use Moose;
  has LastModifiedOn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'lastModifiedOn' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );
  has ServerCatalogStatus => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'serverCatalogStatus' );
  has ServerList => (is => 'ro', isa => 'ArrayRef[Paws::SMS::Server]', traits => ['Unwrapped'], xmlname => 'serverList' );


### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetServersResponse

=head1 ATTRIBUTES


=head2 LastModifiedOn => Str





=head2 NextToken => Str





=head2 ServerCatalogStatus => Str



Valid values are: C<"NOT_IMPORTED">, C<"IMPORTING">, C<"AVAILABLE">, C<"DELETED">, C<"EXPIRED">

=head2 ServerList => ArrayRef[L<Paws::SMS::Server>]






=cut

1;