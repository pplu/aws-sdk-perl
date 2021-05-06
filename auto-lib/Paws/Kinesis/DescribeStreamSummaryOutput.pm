
package Paws::Kinesis::DescribeStreamSummaryOutput;
  use Moose;
  has StreamDescriptionSummary => (is => 'ro', isa => 'Paws::Kinesis::StreamDescriptionSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::DescribeStreamSummaryOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> StreamDescriptionSummary => L<Paws::Kinesis::StreamDescriptionSummary>

A StreamDescriptionSummary containing information about the stream.


=head2 _request_id => Str


=cut

1;