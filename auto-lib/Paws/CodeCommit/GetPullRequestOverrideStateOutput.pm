
package Paws::CodeCommit::GetPullRequestOverrideStateOutput;
  use Moose;
  has Overridden => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'overridden' );
  has Overrider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'overrider' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetPullRequestOverrideStateOutput

=head1 ATTRIBUTES


=head2 Overridden => Bool

A Boolean value that indicates whether a pull request has had its rules
set aside (TRUE) or whether all approval rules still apply (FALSE).


=head2 Overrider => Str

The Amazon Resource Name (ARN) of the user or identity that overrode
the rules and their requirements for the pull request.


=head2 _request_id => Str


=cut

1;