
package Paws::Firehose::CreateDeliveryStream;
  use Moose;
  has DeliveryStreamName => (is => 'ro', isa => 'Str', required => 1);
  has RedshiftDestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::RedshiftDestinationConfiguration');
  has S3DestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::S3DestinationConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeliveryStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Firehose::CreateDeliveryStreamOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::CreateDeliveryStream - Arguments for method CreateDeliveryStream on Paws::Firehose

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeliveryStream on the 
Amazon Kinesis Firehose service. Use the attributes of this class
as arguments to method CreateDeliveryStream.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeliveryStream.

As an example:

  $service_obj->CreateDeliveryStream(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> DeliveryStreamName => Str

  

The name of the delivery stream.










=head2 RedshiftDestinationConfiguration => Paws::Firehose::RedshiftDestinationConfiguration

  

The destination in Amazon Redshift. This value cannot be specified if
Amazon S3 is the desired destination (see restrictions listed above).










=head2 S3DestinationConfiguration => Paws::Firehose::S3DestinationConfiguration

  

The destination in Amazon S3. This value must be specified if
C<RedshiftDestinationConfiguration> is specified (see restrictions
listed above).












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeliveryStream in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

