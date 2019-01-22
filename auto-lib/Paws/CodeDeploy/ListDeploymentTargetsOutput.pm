
package Paws::CodeDeploy::ListDeploymentTargetsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has TargetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'targetIds' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListDeploymentTargetsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If a large amount of information is returned, a token identifier is
also returned. It can be used in a subsequent C<ListDeploymentTargets>
call to return the next set of deployment targets in the list.


=head2 TargetIds => ArrayRef[Str|Undef]

The unique IDs of deployment targets.


=head2 _request_id => Str


=cut

1;