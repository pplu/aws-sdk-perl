
package Paws::Kinesis::EnableEnhancedMonitoring;
  use Moose;
  has ShardLevelMetrics => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableEnhancedMonitoring');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::EnhancedMonitoringOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::EnableEnhancedMonitoring - Arguments for method EnableEnhancedMonitoring on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableEnhancedMonitoring on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method EnableEnhancedMonitoring.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableEnhancedMonitoring.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    my $EnhancedMonitoringOutput = $kinesis->EnableEnhancedMonitoring(
      ShardLevelMetrics => [
        'IncomingBytes',
        ... # values: IncomingBytes, IncomingRecords, OutgoingBytes, OutgoingRecords, WriteProvisionedThroughputExceeded, ReadProvisionedThroughputExceeded, IteratorAgeMilliseconds, ALL
      ],
      StreamName => 'MyStreamName',

    );

    # Results:
    my $CurrentShardLevelMetrics =
      $EnhancedMonitoringOutput->CurrentShardLevelMetrics;
    my $DesiredShardLevelMetrics =
      $EnhancedMonitoringOutput->DesiredShardLevelMetrics;
    my $StreamName = $EnhancedMonitoringOutput->StreamName;

    # Returns a L<Paws::Kinesis::EnhancedMonitoringOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/EnableEnhancedMonitoring>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ShardLevelMetrics => ArrayRef[Str|Undef]

List of shard-level metrics to enable.

The following are the valid shard-level metrics. The value "C<ALL>"
enables every metric.

=over

=item *

C<IncomingBytes>

=item *

C<IncomingRecords>

=item *

C<OutgoingBytes>

=item *

C<OutgoingRecords>

=item *

C<WriteProvisionedThroughputExceeded>

=item *

C<ReadProvisionedThroughputExceeded>

=item *

C<IteratorAgeMilliseconds>

=item *

C<ALL>

=back

For more information, see Monitoring the Amazon Kinesis Data Streams
Service with Amazon CloudWatch
(http://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html)
in the I<Amazon Kinesis Data Streams Developer Guide>.



=head2 B<REQUIRED> StreamName => Str

The name of the stream for which to enable enhanced monitoring.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableEnhancedMonitoring in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

