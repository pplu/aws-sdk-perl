
package Paws::Shield::DescribeAttackResponse;
  use Moose;
  has Attack => (is => 'ro', isa => 'Paws::Shield::AttackDetail');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Shield::DescribeAttackResponse

=head1 ATTRIBUTES


=head2 Attack => L<Paws::Shield::AttackDetail>

The attack that is described.


=head2 _request_id => Str


=cut

1;