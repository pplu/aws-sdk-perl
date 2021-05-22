
package Paws::Connect::DescribeInstanceResponse;
  use Moose;
  has Instance => (is => 'ro', isa => 'Paws::Connect::Instance');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeInstanceResponse

=head1 ATTRIBUTES


=head2 Instance => L<Paws::Connect::Instance>

The name of the instance.


=head2 _request_id => Str


=cut

