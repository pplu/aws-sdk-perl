# Generated from default/object.tt
package Paws::KinesisAnalyticsV2::Output;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_LambdaOutput KinesisAnalyticsV2_DestinationSchema KinesisAnalyticsV2_KinesisStreamsOutput KinesisAnalyticsV2_KinesisFirehoseOutput/;
  has DestinationSchema => (is => 'ro', isa => KinesisAnalyticsV2_DestinationSchema, required => 1);
  has KinesisFirehoseOutput => (is => 'ro', isa => KinesisAnalyticsV2_KinesisFirehoseOutput);
  has KinesisStreamsOutput => (is => 'ro', isa => KinesisAnalyticsV2_KinesisStreamsOutput);
  has LambdaOutput => (is => 'ro', isa => KinesisAnalyticsV2_LambdaOutput);
  has Name => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'KinesisFirehoseOutput' => {
                                            'class' => 'Paws::KinesisAnalyticsV2::KinesisFirehoseOutput',
                                            'type' => 'KinesisAnalyticsV2_KinesisFirehoseOutput'
                                          },
               'KinesisStreamsOutput' => {
                                           'class' => 'Paws::KinesisAnalyticsV2::KinesisStreamsOutput',
                                           'type' => 'KinesisAnalyticsV2_KinesisStreamsOutput'
                                         },
               'LambdaOutput' => {
                                   'class' => 'Paws::KinesisAnalyticsV2::LambdaOutput',
                                   'type' => 'KinesisAnalyticsV2_LambdaOutput'
                                 },
               'DestinationSchema' => {
                                        'class' => 'Paws::KinesisAnalyticsV2::DestinationSchema',
                                        'type' => 'KinesisAnalyticsV2_DestinationSchema'
                                      },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'DestinationSchema' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::Output

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::Output object:

  $service_obj->Method(Att1 => { DestinationSchema => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::Output object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationSchema

=head1 DESCRIPTION

Describes an SQL-based Amazon Kinesis Data Analytics application's
output configuration, in which you identify an in-application stream
and a destination where you want the in-application stream data to be
written. The destination can be a Kinesis data stream or a Kinesis Data
Firehose delivery stream.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationSchema => KinesisAnalyticsV2_DestinationSchema

  Describes the data format when records are written to the destination.


=head2 KinesisFirehoseOutput => KinesisAnalyticsV2_KinesisFirehoseOutput

  Identifies an Amazon Kinesis Data Firehose delivery stream as the
destination.


=head2 KinesisStreamsOutput => KinesisAnalyticsV2_KinesisStreamsOutput

  Identifies an Amazon Kinesis data stream as the destination.


=head2 LambdaOutput => KinesisAnalyticsV2_LambdaOutput

  Identifies an AWS Lambda function as the destination.


=head2 B<REQUIRED> Name => Str

  The name of the in-application stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

