
package Paws::Firehose::CreateDeliveryStreamOutput;
  use Moose;
  has DeliveryStreamARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::CreateDeliveryStreamOutput

=head1 ATTRIBUTES


=head2 DeliveryStreamARN => Str

The ARN of the delivery stream.


=head2 _request_id => Str


=cut

1;