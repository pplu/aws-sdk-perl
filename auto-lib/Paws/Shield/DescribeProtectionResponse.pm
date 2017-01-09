
package Paws::Shield::DescribeProtectionResponse;
  use Moose;
  has Protection => (is => 'ro', isa => 'Paws::Shield::Protection');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Shield::DescribeProtectionResponse

=head1 ATTRIBUTES


=head2 Protection => L<Paws::Shield::Protection>

The Protection object that is described.


=head2 _request_id => Str


=cut

1;