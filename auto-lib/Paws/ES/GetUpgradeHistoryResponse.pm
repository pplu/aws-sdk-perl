
package Paws::ES::GetUpgradeHistoryResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has UpgradeHistories => (is => 'ro', isa => 'ArrayRef[Paws::ES::UpgradeHistory]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::GetUpgradeHistoryResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token that needs to be supplied to the next call to get the
next page of results


=head2 UpgradeHistories => ArrayRef[L<Paws::ES::UpgradeHistory>]

A list of C< UpgradeHistory > objects corresponding to each Upgrade or
Upgrade Eligibility Check performed on a domain returned as part of C<
GetUpgradeHistoryResponse > object.


=head2 _request_id => Str


=cut

