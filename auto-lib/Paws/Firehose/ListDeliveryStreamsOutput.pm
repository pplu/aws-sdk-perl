
package Paws::Firehose::ListDeliveryStreamsOutput;
  use Moose;
  has DeliveryStreamNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has HasMoreDeliveryStreams => (is => 'ro', isa => 'Bool', required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Firehose::ListDeliveryStreamsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryStreamNames => ArrayRef[Str]

The names of the delivery streams.



=head2 B<REQUIRED> HasMoreDeliveryStreams => Bool

Indicates whether there are more delivery streams available to list.




=cut

1;