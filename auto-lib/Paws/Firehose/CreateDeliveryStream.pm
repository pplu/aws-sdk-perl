
package Paws::Firehose::CreateDeliveryStream;
  use Moose;
  has DeliveryStreamName => (is => 'ro', isa => 'Str', required => 1);
  has DeliveryStreamType => (is => 'ro', isa => 'Str');
  has ElasticsearchDestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::ElasticsearchDestinationConfiguration');
  has ExtendedS3DestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::ExtendedS3DestinationConfiguration');
  has KinesisStreamSourceConfiguration => (is => 'ro', isa => 'Paws::Firehose::KinesisStreamSourceConfiguration');
  has RedshiftDestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::RedshiftDestinationConfiguration');
  has S3DestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::S3DestinationConfiguration');
  has SplunkDestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::SplunkDestinationConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeliveryStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Firehose::CreateDeliveryStreamOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::CreateDeliveryStream - Arguments for method CreateDeliveryStream on L<Paws::Firehose>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeliveryStream on the 
L<Amazon Kinesis Firehose|Paws::Firehose> service. Use the attributes of this class
as arguments to method CreateDeliveryStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeliveryStream.

As an example:

  $service_obj->CreateDeliveryStream(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryStreamName => Str

The name of the delivery stream. This name must be unique per AWS
account in the same AWS Region. If the delivery streams are in
different accounts or different Regions, you can have multiple delivery
streams with the same name.



=head2 DeliveryStreamType => Str

The delivery stream type. This parameter can be one of the following
values:

=over

=item *

C<DirectPut>: Provider applications access the delivery stream
directly.

=item *

C<KinesisStreamAsSource>: The delivery stream uses a Kinesis data
stream as a source.

=back


Valid values are: C<"DirectPut">, C<"KinesisStreamAsSource">

=head2 ElasticsearchDestinationConfiguration => L<Paws::Firehose::ElasticsearchDestinationConfiguration>

The destination in Amazon ES. You can specify only one destination.



=head2 ExtendedS3DestinationConfiguration => L<Paws::Firehose::ExtendedS3DestinationConfiguration>

The destination in Amazon S3. You can specify only one destination.



=head2 KinesisStreamSourceConfiguration => L<Paws::Firehose::KinesisStreamSourceConfiguration>

When a Kinesis data stream is used as the source for the delivery
stream, a KinesisStreamSourceConfiguration containing the Kinesis data
stream Amazon Resource Name (ARN) and the role ARN for the source
stream.



=head2 RedshiftDestinationConfiguration => L<Paws::Firehose::RedshiftDestinationConfiguration>

The destination in Amazon Redshift. You can specify only one
destination.



=head2 S3DestinationConfiguration => L<Paws::Firehose::S3DestinationConfiguration>

[Deprecated] The destination in Amazon S3. You can specify only one
destination.



=head2 SplunkDestinationConfiguration => L<Paws::Firehose::SplunkDestinationConfiguration>

The destination in Splunk. You can specify only one destination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeliveryStream in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

