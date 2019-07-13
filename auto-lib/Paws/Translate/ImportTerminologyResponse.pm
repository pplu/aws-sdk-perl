
package Paws::Translate::ImportTerminologyResponse;
  use Moose;
  has TerminologyProperties => (is => 'ro', isa => 'Paws::Translate::TerminologyProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::ImportTerminologyResponse

=head1 ATTRIBUTES


=head2 TerminologyProperties => L<Paws::Translate::TerminologyProperties>

The properties of the custom terminology being imported.


=head2 _request_id => Str


=cut

1;