
package Paws::CodeDeploy::ListGitHubAccountTokenNamesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has TokenNameList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'tokenNameList' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListGitHubAccountTokenNamesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent ListGitHubAccountTokenNames
call to return the next set of names in the list.


=head2 TokenNameList => ArrayRef[Str|Undef]

A list of names of connections to GitHub accounts.


=head2 _request_id => Str


=cut

1;