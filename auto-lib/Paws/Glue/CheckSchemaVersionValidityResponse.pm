
package Paws::Glue::CheckSchemaVersionValidityResponse;
  use Moose;
  has Error => (is => 'ro', isa => 'Str');
  has Valid => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CheckSchemaVersionValidityResponse

=head1 ATTRIBUTES


=head2 Error => Str

A validation failure error message.


=head2 Valid => Bool

Return true, if the schema is valid and false otherwise.


=head2 _request_id => Str


=cut

1;