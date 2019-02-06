
package Paws::Backup::ListProtectedResourcesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::Backup::ProtectedResource]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListProtectedResourcesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<maxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.


=head2 Results => ArrayRef[L<Paws::Backup::ProtectedResource>]

An array of resources successfully backed up by AWS Backup including
the time the resource was saved, an Amazon Resource Name (ARN) of the
resource, and a resource type.


=head2 _request_id => Str


=cut

