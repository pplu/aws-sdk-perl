
package Paws::Firehose::DescribeDeliveryStreamOutput;
  use Moose;
  has DeliveryStreamDescription => (is => 'ro', isa => 'Paws::Firehose::DeliveryStreamDescription', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::DescribeDeliveryStreamOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryStreamDescription => L<Paws::Firehose::DeliveryStreamDescription>

Information about the delivery stream.


=head2 _request_id => Str


=cut

1;