
package Paws::Translate::ListTerminologiesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TerminologyPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::Translate::TerminologyProperties]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::ListTerminologiesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response to the ListTerminologies was truncated, the NextToken
fetches the next group of custom terminologies.


=head2 TerminologyPropertiesList => ArrayRef[L<Paws::Translate::TerminologyProperties>]

The properties list of the custom terminologies returned on the list
request.


=head2 _request_id => Str


=cut

1;