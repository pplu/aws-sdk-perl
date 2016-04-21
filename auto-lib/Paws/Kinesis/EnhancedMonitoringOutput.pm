
package Paws::Kinesis::EnhancedMonitoringOutput;
  use Moose;
  has CurrentShardLevelMetrics => (is => 'ro', isa => 'ArrayRef[Str]');
  has DesiredShardLevelMetrics => (is => 'ro', isa => 'ArrayRef[Str]');
  has StreamName => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::EnhancedMonitoringOutput

=head1 ATTRIBUTES


=head2 CurrentShardLevelMetrics => ArrayRef[Str]

Represents the current state of the metrics that are in the enhanced
state before the operation.



=head2 DesiredShardLevelMetrics => ArrayRef[Str]

Represents the list of all the metrics that would be in the enhanced
state after the operation.



=head2 StreamName => Str

The name of the Amazon Kinesis stream.




=cut

1;