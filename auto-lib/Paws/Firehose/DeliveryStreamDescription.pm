# Generated from default/object.tt
package Paws::Firehose::DeliveryStreamDescription;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::Firehose::Types qw/Firehose_SourceDescription Firehose_DestinationDescription Firehose_DeliveryStreamEncryptionConfiguration/;
  has CreateTimestamp => (is => 'ro', isa => Str);
  has DeliveryStreamARN => (is => 'ro', isa => Str, required => 1);
  has DeliveryStreamEncryptionConfiguration => (is => 'ro', isa => Firehose_DeliveryStreamEncryptionConfiguration);
  has DeliveryStreamName => (is => 'ro', isa => Str, required => 1);
  has DeliveryStreamStatus => (is => 'ro', isa => Str, required => 1);
  has DeliveryStreamType => (is => 'ro', isa => Str, required => 1);
  has Destinations => (is => 'ro', isa => ArrayRef[Firehose_DestinationDescription], required => 1);
  has HasMoreDestinations => (is => 'ro', isa => Bool, required => 1);
  has LastUpdateTimestamp => (is => 'ro', isa => Str);
  has Source => (is => 'ro', isa => Firehose_SourceDescription);
  has VersionId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VersionId' => {
                                'type' => 'Str'
                              },
               'DeliveryStreamARN' => {
                                        'type' => 'Str'
                                      },
               'Destinations' => {
                                   'class' => 'Paws::Firehose::DestinationDescription',
                                   'type' => 'ArrayRef[Firehose_DestinationDescription]'
                                 },
               'Source' => {
                             'class' => 'Paws::Firehose::SourceDescription',
                             'type' => 'Firehose_SourceDescription'
                           },
               'CreateTimestamp' => {
                                      'type' => 'Str'
                                    },
               'DeliveryStreamStatus' => {
                                           'type' => 'Str'
                                         },
               'LastUpdateTimestamp' => {
                                          'type' => 'Str'
                                        },
               'HasMoreDestinations' => {
                                          'type' => 'Bool'
                                        },
               'DeliveryStreamType' => {
                                         'type' => 'Str'
                                       },
               'DeliveryStreamName' => {
                                         'type' => 'Str'
                                       },
               'DeliveryStreamEncryptionConfiguration' => {
                                                            'type' => 'Firehose_DeliveryStreamEncryptionConfiguration',
                                                            'class' => 'Paws::Firehose::DeliveryStreamEncryptionConfiguration'
                                                          }
             },
  'IsRequired' => {
                    'DeliveryStreamARN' => 1,
                    'VersionId' => 1,
                    'Destinations' => 1,
                    'DeliveryStreamStatus' => 1,
                    'DeliveryStreamType' => 1,
                    'HasMoreDestinations' => 1,
                    'DeliveryStreamName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::DeliveryStreamDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::DeliveryStreamDescription object:

  $service_obj->Method(Att1 => { CreateTimestamp => $value, ..., VersionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::DeliveryStreamDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateTimestamp

=head1 DESCRIPTION

Contains information about a delivery stream.

=head1 ATTRIBUTES


=head2 CreateTimestamp => Str

  The date and time that the delivery stream was created.


=head2 B<REQUIRED> DeliveryStreamARN => Str

  The Amazon Resource Name (ARN) of the delivery stream. For more
information, see Amazon Resource Names (ARNs) and AWS Service
Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


=head2 DeliveryStreamEncryptionConfiguration => Firehose_DeliveryStreamEncryptionConfiguration

  Indicates the server-side encryption (SSE) status for the delivery
stream.


=head2 B<REQUIRED> DeliveryStreamName => Str

  The name of the delivery stream.


=head2 B<REQUIRED> DeliveryStreamStatus => Str

  The status of the delivery stream.


=head2 B<REQUIRED> DeliveryStreamType => Str

  The delivery stream type. This can be one of the following values:

=over

=item *

C<DirectPut>: Provider applications access the delivery stream
directly.

=item *

C<KinesisStreamAsSource>: The delivery stream uses a Kinesis data
stream as a source.

=back



=head2 B<REQUIRED> Destinations => ArrayRef[Firehose_DestinationDescription]

  The destinations.


=head2 B<REQUIRED> HasMoreDestinations => Bool

  Indicates whether there are more destinations available to list.


=head2 LastUpdateTimestamp => Str

  The date and time that the delivery stream was last updated.


=head2 Source => Firehose_SourceDescription

  If the C<DeliveryStreamType> parameter is C<KinesisStreamAsSource>, a
SourceDescription object describing the source Kinesis data stream.


=head2 B<REQUIRED> VersionId => Str

  Each time the destination is updated for a delivery stream, the version
ID is changed, and the current version ID is required when updating the
destination. This is so that the service knows it is applying the
changes to the correct version of the delivery stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

