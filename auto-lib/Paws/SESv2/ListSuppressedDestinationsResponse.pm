
package Paws::SESv2::ListSuppressedDestinationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SuppressedDestinationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::SuppressedDestinationSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListSuppressedDestinationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates that there are additional suppressed
destinations to list. To view additional suppressed destinations, issue
another request to C<ListSuppressedDestinations>, and pass this token
in the C<NextToken> parameter.


=head2 SuppressedDestinationSummaries => ArrayRef[L<Paws::SESv2::SuppressedDestinationSummary>]

A list of summaries, each containing a summary for a suppressed email
destination.


=head2 _request_id => Str


=cut

