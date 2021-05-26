
package Paws::Connect::ListPhoneNumbersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PhoneNumberSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::PhoneNumberSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListPhoneNumbersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 PhoneNumberSummaryList => ArrayRef[L<Paws::Connect::PhoneNumberSummary>]

Information about the phone numbers.


=head2 _request_id => Str


=cut

