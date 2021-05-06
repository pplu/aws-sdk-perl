
package Paws::SES::GetSendStatisticsResponse;
  use Moose;
  has SendDataPoints => (is => 'ro', isa => 'ArrayRef[Paws::SES::SendDataPoint]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetSendStatisticsResponse

=head1 ATTRIBUTES


=head2 SendDataPoints => ArrayRef[L<Paws::SES::SendDataPoint>]

A list of data points, each of which represents 15 minutes of activity.


=head2 _request_id => Str


=cut

