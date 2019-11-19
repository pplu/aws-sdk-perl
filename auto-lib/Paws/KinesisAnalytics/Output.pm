# Generated from default/object.tt
package Paws::KinesisAnalytics::Output;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalytics::Types qw/KinesisAnalytics_KinesisStreamsOutput KinesisAnalytics_LambdaOutput KinesisAnalytics_DestinationSchema KinesisAnalytics_KinesisFirehoseOutput/;
  has DestinationSchema => (is => 'ro', isa => KinesisAnalytics_DestinationSchema, required => 1);
  has KinesisFirehoseOutput => (is => 'ro', isa => KinesisAnalytics_KinesisFirehoseOutput);
  has KinesisStreamsOutput => (is => 'ro', isa => KinesisAnalytics_KinesisStreamsOutput);
  has LambdaOutput => (is => 'ro', isa => KinesisAnalytics_LambdaOutput);
  has Name => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'KinesisStreamsOutput' => {
                                           'type' => 'KinesisAnalytics_KinesisStreamsOutput',
                                           'class' => 'Paws::KinesisAnalytics::KinesisStreamsOutput'
                                         },
               'LambdaOutput' => {
                                   'class' => 'Paws::KinesisAnalytics::LambdaOutput',
                                   'type' => 'KinesisAnalytics_LambdaOutput'
                                 },
               'DestinationSchema' => {
                                        'class' => 'Paws::KinesisAnalytics::DestinationSchema',
                                        'type' => 'KinesisAnalytics_DestinationSchema'
                                      },
               'KinesisFirehoseOutput' => {
                                            'class' => 'Paws::KinesisAnalytics::KinesisFirehoseOutput',
                                            'type' => 'KinesisAnalytics_KinesisFirehoseOutput'
                                          },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Name' => 1,
                    'DestinationSchema' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::Output

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::Output object:

  $service_obj->Method(Att1 => { DestinationSchema => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::Output object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationSchema

=head1 DESCRIPTION

Describes application output configuration in which you identify an
in-application stream and a destination where you want the
in-application stream data to be written. The destination can be an
Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream.

For limits on how many destinations an application can write and other
limitations, see Limits
(https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationSchema => KinesisAnalytics_DestinationSchema

  Describes the data format when records are written to the destination.
For more information, see Configuring Application Output
(https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html).


=head2 KinesisFirehoseOutput => KinesisAnalytics_KinesisFirehoseOutput

  Identifies an Amazon Kinesis Firehose delivery stream as the
destination.


=head2 KinesisStreamsOutput => KinesisAnalytics_KinesisStreamsOutput

  Identifies an Amazon Kinesis stream as the destination.


=head2 LambdaOutput => KinesisAnalytics_LambdaOutput

  Identifies an AWS Lambda function as the destination.


=head2 B<REQUIRED> Name => Str

  Name of the in-application stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

