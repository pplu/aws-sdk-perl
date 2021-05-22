
package Paws::Glue::GetColumnStatisticsForTableResponse;
  use Moose;
  has ColumnStatisticsList => (is => 'ro', isa => 'ArrayRef[Paws::Glue::ColumnStatistics]');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Glue::ColumnError]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetColumnStatisticsForTableResponse

=head1 ATTRIBUTES


=head2 ColumnStatisticsList => ArrayRef[L<Paws::Glue::ColumnStatistics>]

List of ColumnStatistics that failed to be retrieved.


=head2 Errors => ArrayRef[L<Paws::Glue::ColumnError>]

List of ColumnStatistics that failed to be retrieved.


=head2 _request_id => Str


=cut

1;