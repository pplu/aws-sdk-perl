
package Paws::GameLift::DescribeScriptOutput;
  use Moose;
  has Script => (is => 'ro', isa => 'Paws::GameLift::Script');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeScriptOutput

=head1 ATTRIBUTES


=head2 Script => L<Paws::GameLift::Script>

A set of properties describing the requested script.


=head2 _request_id => Str


=cut

1;