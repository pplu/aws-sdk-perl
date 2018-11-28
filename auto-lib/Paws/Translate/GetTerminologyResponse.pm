
package Paws::Translate::GetTerminologyResponse;
  use Moose;
  has TerminologyDataLocation => (is => 'ro', isa => 'Paws::Translate::TerminologyDataLocation');
  has TerminologyProperties => (is => 'ro', isa => 'Paws::Translate::TerminologyProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::GetTerminologyResponse

=head1 ATTRIBUTES


=head2 TerminologyDataLocation => L<Paws::Translate::TerminologyDataLocation>

The data location of the custom terminology being retrieved. The custom
terminology file is returned in a presigned url that has a 30 minute
expiration.


=head2 TerminologyProperties => L<Paws::Translate::TerminologyProperties>

The properties of the custom terminology being retrieved.


=head2 _request_id => Str


=cut

1;