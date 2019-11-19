# Generated from default/object.tt
package Paws::KinesisAnalyticsV2::OutputUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_LambdaOutputUpdate KinesisAnalyticsV2_KinesisFirehoseOutputUpdate KinesisAnalyticsV2_DestinationSchema KinesisAnalyticsV2_KinesisStreamsOutputUpdate/;
  has DestinationSchemaUpdate => (is => 'ro', isa => KinesisAnalyticsV2_DestinationSchema);
  has KinesisFirehoseOutputUpdate => (is => 'ro', isa => KinesisAnalyticsV2_KinesisFirehoseOutputUpdate);
  has KinesisStreamsOutputUpdate => (is => 'ro', isa => KinesisAnalyticsV2_KinesisStreamsOutputUpdate);
  has LambdaOutputUpdate => (is => 'ro', isa => KinesisAnalyticsV2_LambdaOutputUpdate);
  has NameUpdate => (is => 'ro', isa => Str);
  has OutputId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'OutputId' => 1
                  },
  'types' => {
               'KinesisFirehoseOutputUpdate' => {
                                                  'type' => 'KinesisAnalyticsV2_KinesisFirehoseOutputUpdate',
                                                  'class' => 'Paws::KinesisAnalyticsV2::KinesisFirehoseOutputUpdate'
                                                },
               'KinesisStreamsOutputUpdate' => {
                                                 'class' => 'Paws::KinesisAnalyticsV2::KinesisStreamsOutputUpdate',
                                                 'type' => 'KinesisAnalyticsV2_KinesisStreamsOutputUpdate'
                                               },
               'NameUpdate' => {
                                 'type' => 'Str'
                               },
               'OutputId' => {
                               'type' => 'Str'
                             },
               'DestinationSchemaUpdate' => {
                                              'type' => 'KinesisAnalyticsV2_DestinationSchema',
                                              'class' => 'Paws::KinesisAnalyticsV2::DestinationSchema'
                                            },
               'LambdaOutputUpdate' => {
                                         'class' => 'Paws::KinesisAnalyticsV2::LambdaOutputUpdate',
                                         'type' => 'KinesisAnalyticsV2_LambdaOutputUpdate'
                                       }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::OutputUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::OutputUpdate object:

  $service_obj->Method(Att1 => { DestinationSchemaUpdate => $value, ..., OutputId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::OutputUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationSchemaUpdate

=head1 DESCRIPTION

For an SQL-based Amazon Kinesis Data Analytics application, describes
updates to the output configuration identified by the C<OutputId>.

=head1 ATTRIBUTES


=head2 DestinationSchemaUpdate => KinesisAnalyticsV2_DestinationSchema

  Describes the data format when records are written to the destination.


=head2 KinesisFirehoseOutputUpdate => KinesisAnalyticsV2_KinesisFirehoseOutputUpdate

  Describes a Kinesis Data Firehose delivery stream as the destination
for the output.


=head2 KinesisStreamsOutputUpdate => KinesisAnalyticsV2_KinesisStreamsOutputUpdate

  Describes a Kinesis data stream as the destination for the output.


=head2 LambdaOutputUpdate => KinesisAnalyticsV2_LambdaOutputUpdate

  Describes an AWS Lambda function as the destination for the output.


=head2 NameUpdate => Str

  If you want to specify a different in-application stream for this
output configuration, use this field to specify the new in-application
stream name.


=head2 B<REQUIRED> OutputId => Str

  Identifies the specific output configuration that you want to update.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

