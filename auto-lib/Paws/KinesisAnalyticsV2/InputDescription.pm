package Paws::KinesisAnalyticsV2::InputDescription;
  use Moose;
  has InAppStreamNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has InputId => (is => 'ro', isa => 'Str');
  has InputParallelism => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::InputParallelism');
  has InputProcessingConfigurationDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::InputProcessingConfigurationDescription');
  has InputSchema => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::SourceSchema');
  has InputStartingPositionConfiguration => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::InputStartingPositionConfiguration');
  has KinesisFirehoseInputDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::KinesisFirehoseInputDescription');
  has KinesisStreamsInputDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::KinesisStreamsInputDescription');
  has NamePrefix => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::InputDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::InputDescription object:

  $service_obj->Method(Att1 => { InAppStreamNames => $value, ..., NamePrefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::InputDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->InAppStreamNames

=head1 DESCRIPTION

Describes the application input configuration for an SQL-based Amazon
Kinesis Data Analytics application.

=head1 ATTRIBUTES


=head2 InAppStreamNames => ArrayRef[Str|Undef]

  Returns the in-application stream names that are mapped to the stream
source.


=head2 InputId => Str

  The input ID that is associated with the application input. This is the
ID that Kinesis Data Analytics assigns to each input configuration that
you add to your application.


=head2 InputParallelism => L<Paws::KinesisAnalyticsV2::InputParallelism>

  Describes the configured parallelism (number of in-application streams
mapped to the streaming source).


=head2 InputProcessingConfigurationDescription => L<Paws::KinesisAnalyticsV2::InputProcessingConfigurationDescription>

  The description of the preprocessor that executes on records in this
input before the application's code is run.


=head2 InputSchema => L<Paws::KinesisAnalyticsV2::SourceSchema>

  Describes the format of the data in the streaming source, and how each
data element maps to corresponding columns in the in-application stream
that is being created.


=head2 InputStartingPositionConfiguration => L<Paws::KinesisAnalyticsV2::InputStartingPositionConfiguration>

  The point at which the application is configured to read from the input
stream.


=head2 KinesisFirehoseInputDescription => L<Paws::KinesisAnalyticsV2::KinesisFirehoseInputDescription>

  If a Kinesis Data Firehose delivery stream is configured as a streaming
source, provides the delivery stream's ARN.


=head2 KinesisStreamsInputDescription => L<Paws::KinesisAnalyticsV2::KinesisStreamsInputDescription>

  If a Kinesis data stream is configured as a streaming source, provides
the Kinesis data stream's Amazon Resource Name (ARN).


=head2 NamePrefix => Str

  The in-application name prefix.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

