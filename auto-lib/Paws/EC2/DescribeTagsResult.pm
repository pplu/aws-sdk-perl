
package Paws::EC2::DescribeTagsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', xmlname => 'nextToken', traits => ['Unwrapped',]);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagDescription]', xmlname => 'tagSet', traits => ['Unwrapped',]);

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTagsResult

=head1 ATTRIBUTES

=head2 NextToken => Str

  

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.









=head2 Tags => ArrayRef[Paws::EC2::TagDescription]

  

A list of tags.











=cut

