# Generated from default/object.tt
package Paws::KinesisAnalytics::Input;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalytics::Types qw/KinesisAnalytics_KinesisStreamsInput KinesisAnalytics_KinesisFirehoseInput KinesisAnalytics_InputParallelism KinesisAnalytics_SourceSchema KinesisAnalytics_InputProcessingConfiguration/;
  has InputParallelism => (is => 'ro', isa => KinesisAnalytics_InputParallelism);
  has InputProcessingConfiguration => (is => 'ro', isa => KinesisAnalytics_InputProcessingConfiguration);
  has InputSchema => (is => 'ro', isa => KinesisAnalytics_SourceSchema, required => 1);
  has KinesisFirehoseInput => (is => 'ro', isa => KinesisAnalytics_KinesisFirehoseInput);
  has KinesisStreamsInput => (is => 'ro', isa => KinesisAnalytics_KinesisStreamsInput);
  has NamePrefix => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InputProcessingConfiguration' => {
                                                   'class' => 'Paws::KinesisAnalytics::InputProcessingConfiguration',
                                                   'type' => 'KinesisAnalytics_InputProcessingConfiguration'
                                                 },
               'NamePrefix' => {
                                 'type' => 'Str'
                               },
               'InputParallelism' => {
                                       'type' => 'KinesisAnalytics_InputParallelism',
                                       'class' => 'Paws::KinesisAnalytics::InputParallelism'
                                     },
               'KinesisStreamsInput' => {
                                          'type' => 'KinesisAnalytics_KinesisStreamsInput',
                                          'class' => 'Paws::KinesisAnalytics::KinesisStreamsInput'
                                        },
               'InputSchema' => {
                                  'type' => 'KinesisAnalytics_SourceSchema',
                                  'class' => 'Paws::KinesisAnalytics::SourceSchema'
                                },
               'KinesisFirehoseInput' => {
                                           'class' => 'Paws::KinesisAnalytics::KinesisFirehoseInput',
                                           'type' => 'KinesisAnalytics_KinesisFirehoseInput'
                                         }
             },
  'IsRequired' => {
                    'NamePrefix' => 1,
                    'InputSchema' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::Input

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::Input object:

  $service_obj->Method(Att1 => { InputParallelism => $value, ..., NamePrefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::Input object:

  $result = $service_obj->Method(...);
  $result->Att1->InputParallelism

=head1 DESCRIPTION

When you configure the application input, you specify the streaming
source, the in-application stream name that is created, and the mapping
between the two. For more information, see Configuring Application
Input
(https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).

=head1 ATTRIBUTES


=head2 InputParallelism => KinesisAnalytics_InputParallelism

  Describes the number of in-application streams to create.

Data from your source is routed to these in-application input streams.

(see Configuring Application Input
(https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).


=head2 InputProcessingConfiguration => KinesisAnalytics_InputProcessingConfiguration

  The InputProcessingConfiguration
(https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html)
for the input. An input processor transforms records as they are
received from the stream, before the application's SQL code executes.
Currently, the only input processing configuration available is
InputLambdaProcessor
(https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html).


=head2 B<REQUIRED> InputSchema => KinesisAnalytics_SourceSchema

  Describes the format of the data in the streaming source, and how each
data element maps to corresponding columns in the in-application stream
that is being created.

Also used to describe the format of the reference data source.


=head2 KinesisFirehoseInput => KinesisAnalytics_KinesisFirehoseInput

  If the streaming source is an Amazon Kinesis Firehose delivery stream,
identifies the delivery stream's ARN and an IAM role that enables
Amazon Kinesis Analytics to access the stream on your behalf.

Note: Either C<KinesisStreamsInput> or C<KinesisFirehoseInput> is
required.


=head2 KinesisStreamsInput => KinesisAnalytics_KinesisStreamsInput

  If the streaming source is an Amazon Kinesis stream, identifies the
stream's Amazon Resource Name (ARN) and an IAM role that enables Amazon
Kinesis Analytics to access the stream on your behalf.

Note: Either C<KinesisStreamsInput> or C<KinesisFirehoseInput> is
required.


=head2 B<REQUIRED> NamePrefix => Str

  Name prefix to use when creating an in-application stream. Suppose that
you specify a prefix "MyInApplicationStream." Amazon Kinesis Analytics
then creates one or more (as per the C<InputParallelism> count you
specified) in-application streams with names
"MyInApplicationStream_001," "MyInApplicationStream_002," and so on.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

