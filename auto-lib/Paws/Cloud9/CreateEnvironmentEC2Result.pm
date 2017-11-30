
package Paws::Cloud9::CreateEnvironmentEC2Result;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::CreateEnvironmentEC2Result

=head1 ATTRIBUTES


=head2 EnvironmentId => Str

The ID of the environment that was created.


=head2 _request_id => Str


=cut

1;