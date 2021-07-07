
package Paws::Proton::ListEnvironmentAccountConnectionsOutput;
  use Moose;
  has EnvironmentAccountConnections => (is => 'ro', isa => 'ArrayRef[Paws::Proton::EnvironmentAccountConnectionSummary]', traits => ['NameInRequest'], request_name => 'environmentAccountConnections' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListEnvironmentAccountConnectionsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentAccountConnections => ArrayRef[L<Paws::Proton::EnvironmentAccountConnectionSummary>]

An array of environment account connections with details that's
returned by AWS Proton.


=head2 NextToken => Str

A token to indicate the location of the next environment account
connection in the array of environment account connections, after the
current requested list of environment account connections.


=head2 _request_id => Str


=cut

1;