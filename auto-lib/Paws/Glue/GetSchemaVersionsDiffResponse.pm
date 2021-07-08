
package Paws::Glue::GetSchemaVersionsDiffResponse;
  use Moose;
  has Diff => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetSchemaVersionsDiffResponse

=head1 ATTRIBUTES


=head2 Diff => Str

The difference between schemas as a string in JsonPatch format.


=head2 _request_id => Str


=cut

1;