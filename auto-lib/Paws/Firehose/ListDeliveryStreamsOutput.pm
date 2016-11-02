
package Paws::Firehose::ListDeliveryStreamsOutput;
  use Moose;
  has DeliveryStreamNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has HasMoreDeliveryStreams => (is => 'ro', isa => 'Bool', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::ListDeliveryStreamsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryStreamNames => ArrayRef[Str|Undef]

The names of the delivery streams.


=head2 B<REQUIRED> HasMoreDeliveryStreams => Bool

Indicates whether there are more delivery streams available to list.


=head2 _request_id => Str


=cut

1;