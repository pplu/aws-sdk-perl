# Generated from default/object.tt
package Paws::KinesisAnalytics::OutputUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalytics::Types qw/KinesisAnalytics_DestinationSchema KinesisAnalytics_KinesisFirehoseOutputUpdate KinesisAnalytics_LambdaOutputUpdate KinesisAnalytics_KinesisStreamsOutputUpdate/;
  has DestinationSchemaUpdate => (is => 'ro', isa => KinesisAnalytics_DestinationSchema);
  has KinesisFirehoseOutputUpdate => (is => 'ro', isa => KinesisAnalytics_KinesisFirehoseOutputUpdate);
  has KinesisStreamsOutputUpdate => (is => 'ro', isa => KinesisAnalytics_KinesisStreamsOutputUpdate);
  has LambdaOutputUpdate => (is => 'ro', isa => KinesisAnalytics_LambdaOutputUpdate);
  has NameUpdate => (is => 'ro', isa => Str);
  has OutputId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OutputId' => {
                               'type' => 'Str'
                             },
               'NameUpdate' => {
                                 'type' => 'Str'
                               },
               'KinesisFirehoseOutputUpdate' => {
                                                  'type' => 'KinesisAnalytics_KinesisFirehoseOutputUpdate',
                                                  'class' => 'Paws::KinesisAnalytics::KinesisFirehoseOutputUpdate'
                                                },
               'KinesisStreamsOutputUpdate' => {
                                                 'type' => 'KinesisAnalytics_KinesisStreamsOutputUpdate',
                                                 'class' => 'Paws::KinesisAnalytics::KinesisStreamsOutputUpdate'
                                               },
               'LambdaOutputUpdate' => {
                                         'type' => 'KinesisAnalytics_LambdaOutputUpdate',
                                         'class' => 'Paws::KinesisAnalytics::LambdaOutputUpdate'
                                       },
               'DestinationSchemaUpdate' => {
                                              'class' => 'Paws::KinesisAnalytics::DestinationSchema',
                                              'type' => 'KinesisAnalytics_DestinationSchema'
                                            }
             },
  'IsRequired' => {
                    'OutputId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::OutputUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::OutputUpdate object:

  $service_obj->Method(Att1 => { DestinationSchemaUpdate => $value, ..., OutputId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::OutputUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationSchemaUpdate

=head1 DESCRIPTION

Describes updates to the output configuration identified by the
C<OutputId>.

=head1 ATTRIBUTES


=head2 DestinationSchemaUpdate => KinesisAnalytics_DestinationSchema

  Describes the data format when records are written to the destination.
For more information, see Configuring Application Output
(https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html).


=head2 KinesisFirehoseOutputUpdate => KinesisAnalytics_KinesisFirehoseOutputUpdate

  Describes an Amazon Kinesis Firehose delivery stream as the destination
for the output.


=head2 KinesisStreamsOutputUpdate => KinesisAnalytics_KinesisStreamsOutputUpdate

  Describes an Amazon Kinesis stream as the destination for the output.


=head2 LambdaOutputUpdate => KinesisAnalytics_LambdaOutputUpdate

  Describes an AWS Lambda function as the destination for the output.


=head2 NameUpdate => Str

  If you want to specify a different in-application stream for this
output configuration, use this field to specify the new in-application
stream name.


=head2 B<REQUIRED> OutputId => Str

  Identifies the specific output configuration that you want to update.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

