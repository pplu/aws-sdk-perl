
package Paws::CloudTrail::ListTagsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceTagList => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::ResourceTag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListTagsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Reserved for future use.


=head2 ResourceTagList => ArrayRef[L<Paws::CloudTrail::ResourceTag>]

A list of resource tags.


=head2 _request_id => Str


=cut

1;