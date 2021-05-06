
package Paws::WorkSpaces::DescribeTagsResult;
  use Moose;
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeTagsResult

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[L<Paws::WorkSpaces::Tag>]

The tags.


=head2 _request_id => Str


=cut

1;