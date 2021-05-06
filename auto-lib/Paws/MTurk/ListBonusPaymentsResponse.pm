
package Paws::MTurk::ListBonusPaymentsResponse;
  use Moose;
  has BonusPayments => (is => 'ro', isa => 'ArrayRef[Paws::MTurk::BonusPayment]');
  has NextToken => (is => 'ro', isa => 'Str');
  has NumResults => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListBonusPaymentsResponse

=head1 ATTRIBUTES


=head2 BonusPayments => ArrayRef[L<Paws::MTurk::BonusPayment>]

A successful request to the ListBonusPayments operation returns a list
of BonusPayment objects.


=head2 NextToken => Str




=head2 NumResults => Int

The number of bonus payments on this page in the filtered results list,
equivalent to the number of bonus payments being returned by this call.


=head2 _request_id => Str


=cut

1;