
package Paws::CodeDeploy::ListTagsForResourceOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent list application revisions
call to return the next set of application revisions in the list.


=head2 Tags => ArrayRef[L<Paws::CodeDeploy::Tag>]

A list of tags returned by C<ListTagsForResource>. The tags are
associated with the resource identified by the input C<ResourceArn>
parameter.


=head2 _request_id => Str


=cut

1;