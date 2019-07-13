package Paws::KinesisAnalyticsV2::FlinkApplicationConfigurationUpdate;
  use Moose;
  has CheckpointConfigurationUpdate => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::CheckpointConfigurationUpdate');
  has MonitoringConfigurationUpdate => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::MonitoringConfigurationUpdate');
  has ParallelismConfigurationUpdate => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ParallelismConfigurationUpdate');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::FlinkApplicationConfigurationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::FlinkApplicationConfigurationUpdate object:

  $service_obj->Method(Att1 => { CheckpointConfigurationUpdate => $value, ..., ParallelismConfigurationUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::FlinkApplicationConfigurationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->CheckpointConfigurationUpdate

=head1 DESCRIPTION

Describes updates to the configuration parameters for a Java-based
Amazon Kinesis Data Analytics application.

=head1 ATTRIBUTES


=head2 CheckpointConfigurationUpdate => L<Paws::KinesisAnalyticsV2::CheckpointConfigurationUpdate>

  Describes updates to an application's checkpointing configuration.
Checkpointing is the process of persisting application state for fault
tolerance.


=head2 MonitoringConfigurationUpdate => L<Paws::KinesisAnalyticsV2::MonitoringConfigurationUpdate>

  Describes updates to the configuration parameters for Amazon CloudWatch
logging for an application.


=head2 ParallelismConfigurationUpdate => L<Paws::KinesisAnalyticsV2::ParallelismConfigurationUpdate>

  Describes updates to the parameters for how an application executes
multiple tasks simultaneously.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

