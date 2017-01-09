
package Paws::GameLift::DescribeBuildOutput;
  use Moose;
  has Build => (is => 'ro', isa => 'Paws::GameLift::Build');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeBuildOutput

=head1 ATTRIBUTES


=head2 Build => L<Paws::GameLift::Build>

Set of properties describing the requested build.


=head2 _request_id => Str


=cut

1;