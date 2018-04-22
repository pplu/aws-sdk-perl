
package Paws::Firehose::UpdateDestination;
  use Moose;
  has CurrentDeliveryStreamVersionId => (is => 'ro', isa => 'Str', required => 1);
  has DeliveryStreamName => (is => 'ro', isa => 'Str', required => 1);
  has DestinationId => (is => 'ro', isa => 'Str', required => 1);
  has ElasticsearchDestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::ElasticsearchDestinationUpdate');
  has ExtendedS3DestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::ExtendedS3DestinationUpdate');
  has RedshiftDestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::RedshiftDestinationUpdate');
  has S3DestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::S3DestinationUpdate');
  has SplunkDestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::SplunkDestinationUpdate');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDestination');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Firehose::UpdateDestinationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::UpdateDestination - Arguments for method UpdateDestination on L<Paws::Firehose>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDestination on the 
Amazon Kinesis Firehose service. Use the attributes of this class
as arguments to method UpdateDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDestination.

As an example:

  $service_obj->UpdateDestination(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CurrentDeliveryStreamVersionId => Str

Obtain this value from the C<VersionId> result of
DeliveryStreamDescription. This value is required, and it helps the
service perform conditional operations. For example, if there is an
interleaving update and this value is null, then the update destination
fails. After the update is successful, the C<VersionId> value is
updated. The service then performs a merge of the old configuration
with the new configuration.



=head2 B<REQUIRED> DeliveryStreamName => Str

The name of the delivery stream.



=head2 B<REQUIRED> DestinationId => Str

The ID of the destination.



=head2 ElasticsearchDestinationUpdate => L<Paws::Firehose::ElasticsearchDestinationUpdate>

Describes an update for a destination in Amazon ES.



=head2 ExtendedS3DestinationUpdate => L<Paws::Firehose::ExtendedS3DestinationUpdate>

Describes an update for a destination in Amazon S3.



=head2 RedshiftDestinationUpdate => L<Paws::Firehose::RedshiftDestinationUpdate>

Describes an update for a destination in Amazon Redshift.



=head2 S3DestinationUpdate => L<Paws::Firehose::S3DestinationUpdate>

[Deprecated] Describes an update for a destination in Amazon S3.



=head2 SplunkDestinationUpdate => L<Paws::Firehose::SplunkDestinationUpdate>

Describes an update for a destination in Splunk.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDestination in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

