
package Paws::CodeDeploy::ListDeploymentsOutput;
  use Moose;
  has Deployments => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'deployments' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListDeploymentsOutput

=head1 ATTRIBUTES


=head2 Deployments => ArrayRef[Str|Undef]

A list of deployment IDs.


=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent list deployments call to
return the next set of deployments in the list.


=head2 _request_id => Str


=cut

1;