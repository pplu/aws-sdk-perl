
package Paws::GameLift::DescribeAliasOutput;
  use Moose;
  has Alias => (is => 'ro', isa => 'Paws::GameLift::Alias');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeAliasOutput

=head1 ATTRIBUTES


=head2 Alias => L<Paws::GameLift::Alias>

Object containing the requested alias.




=cut

1;