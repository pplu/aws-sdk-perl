package Paws::KinesisAnalyticsV2::FlinkApplicationConfiguration;
  use Moose;
  has CheckpointConfiguration => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::CheckpointConfiguration');
  has MonitoringConfiguration => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::MonitoringConfiguration');
  has ParallelismConfiguration => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ParallelismConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::FlinkApplicationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::FlinkApplicationConfiguration object:

  $service_obj->Method(Att1 => { CheckpointConfiguration => $value, ..., ParallelismConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::FlinkApplicationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CheckpointConfiguration

=head1 DESCRIPTION

Describes configuration parameters for a Java-based Amazon Kinesis Data
Analytics application.

=head1 ATTRIBUTES


=head2 CheckpointConfiguration => L<Paws::KinesisAnalyticsV2::CheckpointConfiguration>

  Describes an application's checkpointing configuration. Checkpointing
is the process of persisting application state for fault tolerance. For
more information, see Checkpoints for Fault Tolerance
(https://ci.apache.org/projects/flink/flink-docs-release-1.6/concepts/programming-model.html#checkpoints-for-fault-tolerance)
in the Apache Flink Documentation
(https://ci.apache.org/projects/flink/flink-docs-release-1.6/).


=head2 MonitoringConfiguration => L<Paws::KinesisAnalyticsV2::MonitoringConfiguration>

  Describes configuration parameters for Amazon CloudWatch logging for an
application.


=head2 ParallelismConfiguration => L<Paws::KinesisAnalyticsV2::ParallelismConfiguration>

  Describes parameters for how an application executes multiple tasks
simultaneously.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

