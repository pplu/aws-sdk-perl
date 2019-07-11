
package Paws::IoT::GetStatisticsResponse;
  use Moose;
  has Statistics => (is => 'ro', isa => 'Paws::IoT::Statistics', traits => ['NameInRequest'], request_name => 'statistics');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetStatisticsResponse

=head1 ATTRIBUTES


=head2 Statistics => L<Paws::IoT::Statistics>

The statistics returned by the Fleet Indexing service based on the
query and aggregation field.


=head2 _request_id => Str


=cut

