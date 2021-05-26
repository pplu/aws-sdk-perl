
package Paws::CodeBuild::ListSharedProjectsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Projects => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'projects' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListSharedProjectsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

During a previous call, the maximum number of items that can be
returned is the value specified in C<maxResults>. If there more items
in the list, then a unique string called a I<nextToken> is returned. To
get the next batch of items in the list, call this operation again,
adding the next token to the call. To get all of the items in the list,
keep calling this operation with each subsequent next token that is
returned, until no more next tokens are returned.


=head2 Projects => ArrayRef[Str|Undef]

The list of ARNs for the build projects shared with the current AWS
account or user.


=head2 _request_id => Str


=cut

1;