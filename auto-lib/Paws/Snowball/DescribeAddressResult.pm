
package Paws::Snowball::DescribeAddressResult;
  use Moose;
  has Address => (is => 'ro', isa => 'Paws::Snowball::Address');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::DescribeAddressResult

=head1 ATTRIBUTES


=head2 Address => L<Paws::Snowball::Address>

The address that you want the Snowball or Snowballs associated with a
specific job to be shipped to.


=head2 _request_id => Str


=cut

1;