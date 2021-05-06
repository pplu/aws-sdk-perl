
package Paws::CodeDeploy::ListApplicationsOutput;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'applications' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListApplicationsOutput

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[Str|Undef]

A list of application names.


=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent list applications call to
return the next set of applications in the list.


=head2 _request_id => Str


=cut

1;