
package Paws::CloudTrail::ListTagsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceTagList => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::ResourceTag]');


### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListTagsResponse

=head1 ATTRIBUTES

=head2 NextToken => Str

  

Reserved for future use.









=head2 ResourceTagList => ArrayRef[Paws::CloudTrail::ResourceTag]

  


=cut

1;