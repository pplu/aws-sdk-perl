package Paws::KinesisAnalyticsV2::FlinkApplicationConfigurationDescription;
  use Moose;
  has CheckpointConfigurationDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::CheckpointConfigurationDescription');
  has JobPlanDescription => (is => 'ro', isa => 'Str');
  has MonitoringConfigurationDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::MonitoringConfigurationDescription');
  has ParallelismConfigurationDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ParallelismConfigurationDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::FlinkApplicationConfigurationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::FlinkApplicationConfigurationDescription object:

  $service_obj->Method(Att1 => { CheckpointConfigurationDescription => $value, ..., ParallelismConfigurationDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::FlinkApplicationConfigurationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CheckpointConfigurationDescription

=head1 DESCRIPTION

Describes configuration parameters for a Java-based Amazon Kinesis Data
Analytics application.

=head1 ATTRIBUTES


=head2 CheckpointConfigurationDescription => L<Paws::KinesisAnalyticsV2::CheckpointConfigurationDescription>

  Describes an application's checkpointing configuration. Checkpointing
is the process of persisting application state for fault tolerance.


=head2 JobPlanDescription => Str

  The job plan for an application. For more information about the job
plan, see Jobs and Scheduling
(https://ci.apache.org/projects/flink/flink-docs-stable/internals/job_scheduling.html)
in the Apache Flink Documentation
(https://ci.apache.org/projects/flink/flink-docs-release-1.6/). To
retrieve the job plan for the application, use the
DescribeApplicationRequest$IncludeAdditionalDetails parameter of the
DescribeApplication operation.


=head2 MonitoringConfigurationDescription => L<Paws::KinesisAnalyticsV2::MonitoringConfigurationDescription>

  Describes configuration parameters for Amazon CloudWatch logging for an
application.


=head2 ParallelismConfigurationDescription => L<Paws::KinesisAnalyticsV2::ParallelismConfigurationDescription>

  Describes parameters for how an application executes multiple tasks
simultaneously.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

