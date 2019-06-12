
package Paws::SSM::GetOpsSummaryResult;
  use Moose;
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::SSM::OpsEntity]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetOpsSummaryResult

=head1 ATTRIBUTES


=head2 Entities => ArrayRef[L<Paws::SSM::OpsEntity>]

The list of aggregated and filtered OpsItems.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

1;