
package Paws::Glue::UpdateColumnStatisticsForTableResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Glue::ColumnStatisticsError]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateColumnStatisticsForTableResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::Glue::ColumnStatisticsError>]

List of ColumnStatisticsErrors.


=head2 _request_id => Str


=cut

1;