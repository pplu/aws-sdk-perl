
package Paws::Glue::GetConnectionsResponse;
  use Moose;
  has ConnectionList => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Connection]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetConnectionsResponse

=head1 ATTRIBUTES


=head2 ConnectionList => ArrayRef[L<Paws::Glue::Connection>]

A list of requested connection definitions.


=head2 NextToken => Str

A continuation token, if the list of connections returned does not
include the last of the filtered connections.


=head2 _request_id => Str


=cut

1;