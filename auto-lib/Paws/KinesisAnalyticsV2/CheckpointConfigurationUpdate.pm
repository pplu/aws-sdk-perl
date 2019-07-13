package Paws::KinesisAnalyticsV2::CheckpointConfigurationUpdate;
  use Moose;
  has CheckpointingEnabledUpdate => (is => 'ro', isa => 'Bool');
  has CheckpointIntervalUpdate => (is => 'ro', isa => 'Int');
  has ConfigurationTypeUpdate => (is => 'ro', isa => 'Str');
  has MinPauseBetweenCheckpointsUpdate => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::CheckpointConfigurationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::CheckpointConfigurationUpdate object:

  $service_obj->Method(Att1 => { CheckpointingEnabledUpdate => $value, ..., MinPauseBetweenCheckpointsUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::CheckpointConfigurationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->CheckpointingEnabledUpdate

=head1 DESCRIPTION

Describes updates to the checkpointing parameters for a Java-based
Amazon Kinesis Data Analytics application.

=head1 ATTRIBUTES


=head2 CheckpointingEnabledUpdate => Bool

  Describes updates to whether checkpointing is enabled for an
application.


=head2 CheckpointIntervalUpdate => Int

  Describes updates to the interval in milliseconds between checkpoint
operations.


=head2 ConfigurationTypeUpdate => Str

  Describes updates to whether the application uses the default
checkpointing behavior of Kinesis Data Analytics.


=head2 MinPauseBetweenCheckpointsUpdate => Int

  Describes updates to the minimum time in milliseconds after a
checkpoint operation completes that a new checkpoint operation can
start.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

