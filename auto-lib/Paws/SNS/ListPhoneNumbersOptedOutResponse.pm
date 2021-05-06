
package Paws::SNS::ListPhoneNumbersOptedOutResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PhoneNumbers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ListPhoneNumbersOptedOutResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A C<NextToken> string is returned when you call the
C<ListPhoneNumbersOptedOut> action if additional records are available
after the first page of results.


=head2 PhoneNumbers => ArrayRef[Str|Undef]

A list of phone numbers that are opted out of receiving SMS messages.
The list is paginated, and each page can contain up to 100 phone
numbers.


=head2 _request_id => Str


=cut

