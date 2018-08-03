
package Paws::Kinesis::DescribeStreamConsumerOutput;
  use Moose;
  has ConsumerDescription => (is => 'ro', isa => 'Paws::Kinesis::ConsumerDescription', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::DescribeStreamConsumerOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConsumerDescription => L<Paws::Kinesis::ConsumerDescription>

An object that represents the details of the consumer.


=head2 _request_id => Str


=cut

1;