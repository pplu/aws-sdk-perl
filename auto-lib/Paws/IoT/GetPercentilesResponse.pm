
package Paws::IoT::GetPercentilesResponse;
  use Moose;
  has Percentiles => (is => 'ro', isa => 'ArrayRef[Paws::IoT::PercentPair]', traits => ['NameInRequest'], request_name => 'percentiles');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetPercentilesResponse

=head1 ATTRIBUTES


=head2 Percentiles => ArrayRef[L<Paws::IoT::PercentPair>]

The percentile values of the aggregated fields.


=head2 _request_id => Str


=cut

