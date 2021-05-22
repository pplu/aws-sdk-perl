
package Paws::Shield::DescribeAttackStatisticsResponse;
  use Moose;
  has DataItems => (is => 'ro', isa => 'ArrayRef[Paws::Shield::AttackStatisticsDataItem]', required => 1);
  has TimeRange => (is => 'ro', isa => 'Paws::Shield::TimeRange', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Shield::DescribeAttackStatisticsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataItems => ArrayRef[L<Paws::Shield::AttackStatisticsDataItem>]

The data that describes the attacks detected during the time period.


=head2 B<REQUIRED> TimeRange => L<Paws::Shield::TimeRange>




=head2 _request_id => Str


=cut

1;