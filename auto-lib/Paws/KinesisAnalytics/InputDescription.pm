# Generated from default/object.tt
package Paws::KinesisAnalytics::InputDescription;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::KinesisAnalytics::Types qw/KinesisAnalytics_InputProcessingConfigurationDescription KinesisAnalytics_KinesisFirehoseInputDescription KinesisAnalytics_KinesisStreamsInputDescription KinesisAnalytics_SourceSchema KinesisAnalytics_InputStartingPositionConfiguration KinesisAnalytics_InputParallelism/;
  has InAppStreamNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has InputId => (is => 'ro', isa => Str);
  has InputParallelism => (is => 'ro', isa => KinesisAnalytics_InputParallelism);
  has InputProcessingConfigurationDescription => (is => 'ro', isa => KinesisAnalytics_InputProcessingConfigurationDescription);
  has InputSchema => (is => 'ro', isa => KinesisAnalytics_SourceSchema);
  has InputStartingPositionConfiguration => (is => 'ro', isa => KinesisAnalytics_InputStartingPositionConfiguration);
  has KinesisFirehoseInputDescription => (is => 'ro', isa => KinesisAnalytics_KinesisFirehoseInputDescription);
  has KinesisStreamsInputDescription => (is => 'ro', isa => KinesisAnalytics_KinesisStreamsInputDescription);
  has NamePrefix => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NamePrefix' => {
                                 'type' => 'Str'
                               },
               'InputParallelism' => {
                                       'type' => 'KinesisAnalytics_InputParallelism',
                                       'class' => 'Paws::KinesisAnalytics::InputParallelism'
                                     },
               'InputProcessingConfigurationDescription' => {
                                                              'type' => 'KinesisAnalytics_InputProcessingConfigurationDescription',
                                                              'class' => 'Paws::KinesisAnalytics::InputProcessingConfigurationDescription'
                                                            },
               'InAppStreamNames' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'InputStartingPositionConfiguration' => {
                                                         'class' => 'Paws::KinesisAnalytics::InputStartingPositionConfiguration',
                                                         'type' => 'KinesisAnalytics_InputStartingPositionConfiguration'
                                                       },
               'KinesisFirehoseInputDescription' => {
                                                      'type' => 'KinesisAnalytics_KinesisFirehoseInputDescription',
                                                      'class' => 'Paws::KinesisAnalytics::KinesisFirehoseInputDescription'
                                                    },
               'InputSchema' => {
                                  'type' => 'KinesisAnalytics_SourceSchema',
                                  'class' => 'Paws::KinesisAnalytics::SourceSchema'
                                },
               'InputId' => {
                              'type' => 'Str'
                            },
               'KinesisStreamsInputDescription' => {
                                                     'class' => 'Paws::KinesisAnalytics::KinesisStreamsInputDescription',
                                                     'type' => 'KinesisAnalytics_KinesisStreamsInputDescription'
                                                   }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::InputDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::InputDescription object:

  $service_obj->Method(Att1 => { InAppStreamNames => $value, ..., NamePrefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::InputDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->InAppStreamNames

=head1 DESCRIPTION

Describes the application input configuration. For more information,
see Configuring Application Input
(https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).

=head1 ATTRIBUTES


=head2 InAppStreamNames => ArrayRef[Str|Undef]

  Returns the in-application stream names that are mapped to the stream
source.


=head2 InputId => Str

  Input ID associated with the application input. This is the ID that
Amazon Kinesis Analytics assigns to each input configuration you add to
your application.


=head2 InputParallelism => KinesisAnalytics_InputParallelism

  Describes the configured parallelism (number of in-application streams
mapped to the streaming source).


=head2 InputProcessingConfigurationDescription => KinesisAnalytics_InputProcessingConfigurationDescription

  The description of the preprocessor that executes on records in this
input before the application's code is run.


=head2 InputSchema => KinesisAnalytics_SourceSchema

  Describes the format of the data in the streaming source, and how each
data element maps to corresponding columns in the in-application stream
that is being created.


=head2 InputStartingPositionConfiguration => KinesisAnalytics_InputStartingPositionConfiguration

  Point at which the application is configured to read from the input
stream.


=head2 KinesisFirehoseInputDescription => KinesisAnalytics_KinesisFirehoseInputDescription

  If an Amazon Kinesis Firehose delivery stream is configured as a
streaming source, provides the delivery stream's ARN and an IAM role
that enables Amazon Kinesis Analytics to access the stream on your
behalf.


=head2 KinesisStreamsInputDescription => KinesisAnalytics_KinesisStreamsInputDescription

  If an Amazon Kinesis stream is configured as streaming source, provides
Amazon Kinesis stream's Amazon Resource Name (ARN) and an IAM role that
enables Amazon Kinesis Analytics to access the stream on your behalf.


=head2 NamePrefix => Str

  In-application name prefix.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

