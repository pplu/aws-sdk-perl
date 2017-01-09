
package Paws::Kinesis::EnhancedMonitoringOutput;
  use Moose;
  has CurrentShardLevelMetrics => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DesiredShardLevelMetrics => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StreamName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::EnhancedMonitoringOutput

=head1 ATTRIBUTES


=head2 CurrentShardLevelMetrics => ArrayRef[Str|Undef]

Represents the current state of the metrics that are in the enhanced
state before the operation.


=head2 DesiredShardLevelMetrics => ArrayRef[Str|Undef]

Represents the list of all the metrics that would be in the enhanced
state after the operation.


=head2 StreamName => Str

The name of the Amazon Kinesis stream.


=head2 _request_id => Str


=cut

1;