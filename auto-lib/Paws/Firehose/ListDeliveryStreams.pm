
package Paws::Firehose::ListDeliveryStreams;
  use Moose;
  has DeliveryStreamType => (is => 'ro', isa => 'Str');
  has ExclusiveStartDeliveryStreamName => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeliveryStreams');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Firehose::ListDeliveryStreamsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::ListDeliveryStreams - Arguments for method ListDeliveryStreams on L<Paws::Firehose>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeliveryStreams on the 
Amazon Kinesis Firehose service. Use the attributes of this class
as arguments to method ListDeliveryStreams.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeliveryStreams.

As an example:

  $service_obj->ListDeliveryStreams(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DeliveryStreamType => Str

The delivery stream type. This can be one of the following values:

=over

=item *

C<DirectPut>: Provider applications access the delivery stream
directly.

=item *

C<KinesisStreamAsSource>: The delivery stream uses a Kinesis data
stream as a source.

=back

This parameter is optional. If this parameter is omitted, delivery
streams of all types are returned.

Valid values are: C<"DirectPut">, C<"KinesisStreamAsSource">

=head2 ExclusiveStartDeliveryStreamName => Str

The name of the delivery stream to start the list with.



=head2 Limit => Int

The maximum number of delivery streams to list. The default value is
10.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeliveryStreams in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

