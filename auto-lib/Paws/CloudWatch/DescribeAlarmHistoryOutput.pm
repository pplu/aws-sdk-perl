
package Paws::CloudWatch::DescribeAlarmHistoryOutput;
  use Moose;
  has AlarmHistoryItems => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::AlarmHistoryItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::DescribeAlarmHistoryOutput

=head1 ATTRIBUTES


=head2 AlarmHistoryItems => ArrayRef[L<Paws::CloudWatch::AlarmHistoryItem>]

The alarm histories, in JSON format.


=head2 NextToken => Str

The token that marks the start of the next batch of returned results.


=head2 _request_id => Str


=cut

