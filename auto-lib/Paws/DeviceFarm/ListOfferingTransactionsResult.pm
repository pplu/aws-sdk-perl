
package Paws::DeviceFarm::ListOfferingTransactionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );
  has OfferingTransactions => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::OfferingTransaction]', traits => ['Unwrapped'], xmlname => 'offeringTransactions' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListOfferingTransactionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.



=head2 OfferingTransactions => ArrayRef[L<Paws::DeviceFarm::OfferingTransaction>]

The audit log of subscriptions you have purchased and modified through
AWS Device Farm.




=cut

1;