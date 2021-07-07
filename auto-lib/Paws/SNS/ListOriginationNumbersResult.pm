
package Paws::SNS::ListOriginationNumbersResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PhoneNumbers => (is => 'ro', isa => 'ArrayRef[Paws::SNS::PhoneNumberInformation]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ListOriginationNumbersResult

=head1 ATTRIBUTES


=head2 NextToken => Str

A C<NextToken> string is returned when you call the
C<ListOriginationNumbers> operation if additional pages of records are
available.


=head2 PhoneNumbers => ArrayRef[L<Paws::SNS::PhoneNumberInformation>]

A list of the calling account's verified and pending origination
numbers.


=head2 _request_id => Str


=cut

