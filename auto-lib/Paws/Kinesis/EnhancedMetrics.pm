package Paws::Kinesis::EnhancedMetrics;
  use Moose;
  has ShardLevelMetrics => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::EnhancedMetrics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kinesis::EnhancedMetrics object:

  $service_obj->Method(Att1 => { ShardLevelMetrics => $value, ..., ShardLevelMetrics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kinesis::EnhancedMetrics object:

  $result = $service_obj->Method(...);
  $result->Att1->ShardLevelMetrics

=head1 DESCRIPTION

Represents enhanced metrics types.

=head1 ATTRIBUTES


=head2 ShardLevelMetrics => ArrayRef[Str|Undef]

  List of shard-level metrics.

The following are the valid shard-level metrics. The value "C<ALL>"
enhances every metric.

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



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

