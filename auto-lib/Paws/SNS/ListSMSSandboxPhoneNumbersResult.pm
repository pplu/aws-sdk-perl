
package Paws::SNS::ListSMSSandboxPhoneNumbersResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PhoneNumbers => (is => 'ro', isa => 'ArrayRef[Paws::SNS::SMSSandboxPhoneNumber]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ListSMSSandboxPhoneNumbersResult

=head1 ATTRIBUTES


=head2 NextToken => Str

A C<NextToken> string is returned when you call the
C<ListSMSSandboxPhoneNumbersInput> operation if additional pages of
records are available.


=head2 B<REQUIRED> PhoneNumbers => ArrayRef[L<Paws::SNS::SMSSandboxPhoneNumber>]

A list of the calling account's pending and verified phone numbers.


=head2 _request_id => Str


=cut

