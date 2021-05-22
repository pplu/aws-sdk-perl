
package Paws::Glue::GetColumnStatisticsForPartitionResponse;
  use Moose;
  has ColumnStatisticsList => (is => 'ro', isa => 'ArrayRef[Paws::Glue::ColumnStatistics]');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Glue::ColumnError]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetColumnStatisticsForPartitionResponse

=head1 ATTRIBUTES


=head2 ColumnStatisticsList => ArrayRef[L<Paws::Glue::ColumnStatistics>]

List of ColumnStatistics that failed to be retrieved.


=head2 Errors => ArrayRef[L<Paws::Glue::ColumnError>]

Error occurred during retrieving column statistics data.


=head2 _request_id => Str


=cut

1;