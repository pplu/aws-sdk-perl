
package Paws::Kinesis::DisableEnhancedMonitoring;
  use Moose;
  has ShardLevelMetrics => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableEnhancedMonitoring');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::EnhancedMonitoringOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::DisableEnhancedMonitoring - Arguments for method DisableEnhancedMonitoring on Paws::Kinesis

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableEnhancedMonitoring on the 
Amazon Kinesis service. Use the attributes of this class
as arguments to method DisableEnhancedMonitoring.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableEnhancedMonitoring.

As an example:

  $service_obj->DisableEnhancedMonitoring(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ShardLevelMetrics => ArrayRef[Str|Undef]

List of shard-level metrics to disable.

The following are the valid shard-level metrics. The value "C<ALL>"
disables every metric.

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

For more information, see Monitoring the Amazon Kinesis Streams Service
with Amazon CloudWatch in the I<Amazon Kinesis Streams Developer
Guide>.



=head2 B<REQUIRED> StreamName => Str

The name of the Amazon Kinesis stream for which to disable enhanced
monitoring.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableEnhancedMonitoring in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

