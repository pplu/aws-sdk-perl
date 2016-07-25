
package Paws::WorkSpaces::DescribeTagsResult;
  use Moose;
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::Tag]');


### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeTagsResult

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[L<Paws::WorkSpaces::Tag>]

The list of tags.




=cut

1;