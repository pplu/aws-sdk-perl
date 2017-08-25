
package Paws::Glue::GetTableVersionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TableVersions => (is => 'ro', isa => 'ArrayRef[Paws::Glue::TableVersion]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetTableVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if the list of available versions does not
include the last one.


=head2 TableVersions => ArrayRef[L<Paws::Glue::TableVersion>]

A list of strings identifying available versions of the specified
table.


=head2 _request_id => Str


=cut

1;