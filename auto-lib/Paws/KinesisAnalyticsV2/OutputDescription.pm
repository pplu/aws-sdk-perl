# Generated from default/object.tt
package Paws::KinesisAnalyticsV2::OutputDescription;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_LambdaOutputDescription KinesisAnalyticsV2_DestinationSchema KinesisAnalyticsV2_KinesisStreamsOutputDescription KinesisAnalyticsV2_KinesisFirehoseOutputDescription/;
  has DestinationSchema => (is => 'ro', isa => KinesisAnalyticsV2_DestinationSchema);
  has KinesisFirehoseOutputDescription => (is => 'ro', isa => KinesisAnalyticsV2_KinesisFirehoseOutputDescription);
  has KinesisStreamsOutputDescription => (is => 'ro', isa => KinesisAnalyticsV2_KinesisStreamsOutputDescription);
  has LambdaOutputDescription => (is => 'ro', isa => KinesisAnalyticsV2_LambdaOutputDescription);
  has Name => (is => 'ro', isa => Str);
  has OutputId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OutputId' => {
                               'type' => 'Str'
                             },
               'LambdaOutputDescription' => {
                                              'class' => 'Paws::KinesisAnalyticsV2::LambdaOutputDescription',
                                              'type' => 'KinesisAnalyticsV2_LambdaOutputDescription'
                                            },
               'KinesisStreamsOutputDescription' => {
                                                      'class' => 'Paws::KinesisAnalyticsV2::KinesisStreamsOutputDescription',
                                                      'type' => 'KinesisAnalyticsV2_KinesisStreamsOutputDescription'
                                                    },
               'KinesisFirehoseOutputDescription' => {
                                                       'class' => 'Paws::KinesisAnalyticsV2::KinesisFirehoseOutputDescription',
                                                       'type' => 'KinesisAnalyticsV2_KinesisFirehoseOutputDescription'
                                                     },
               'DestinationSchema' => {
                                        'class' => 'Paws::KinesisAnalyticsV2::DestinationSchema',
                                        'type' => 'KinesisAnalyticsV2_DestinationSchema'
                                      },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::OutputDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::OutputDescription object:

  $service_obj->Method(Att1 => { DestinationSchema => $value, ..., OutputId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::OutputDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationSchema

=head1 DESCRIPTION

For an SQL-based Amazon Kinesis Data Analytics application, describes
the application output configuration, which includes the in-application
stream name and the destination where the stream data is written. The
destination can be a Kinesis data stream or a Kinesis Data Firehose
delivery stream.

=head1 ATTRIBUTES


=head2 DestinationSchema => KinesisAnalyticsV2_DestinationSchema

  The data format used for writing data to the destination.


=head2 KinesisFirehoseOutputDescription => KinesisAnalyticsV2_KinesisFirehoseOutputDescription

  Describes the Kinesis Data Firehose delivery stream that is configured
as the destination where output is written.


=head2 KinesisStreamsOutputDescription => KinesisAnalyticsV2_KinesisStreamsOutputDescription

  Describes the Kinesis data stream that is configured as the destination
where output is written.


=head2 LambdaOutputDescription => KinesisAnalyticsV2_LambdaOutputDescription

  Describes the Lambda function that is configured as the destination
where output is written.


=head2 Name => Str

  The name of the in-application stream that is configured as output.


=head2 OutputId => Str

  A unique identifier for the output configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

