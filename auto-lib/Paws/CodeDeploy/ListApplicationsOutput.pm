
package Paws::CodeDeploy::ListApplicationsOutput;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'applications' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListApplicationsOutput

=head1 ATTRIBUTES

=head2 Applications => ArrayRef[Str]

  A list of application names.
=head2 NextToken => Str

  If the amount of information that is returned is significantly large,
an identifier will also be returned, which can be used in a subsequent
list applications call to return the next set of applications in the
list.


=cut

1;