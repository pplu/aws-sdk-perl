
package Paws::Connect::DescribeInstanceAttributeResponse;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Paws::Connect::Attribute');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeInstanceAttributeResponse

=head1 ATTRIBUTES


=head2 Attribute => L<Paws::Connect::Attribute>

The type of attribute.


=head2 _request_id => Str


=cut

