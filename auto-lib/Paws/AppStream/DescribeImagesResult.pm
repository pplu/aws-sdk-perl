
package Paws::AppStream::DescribeImagesResult;
  use Moose;
  has Images => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::Image]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeImagesResult

=head1 ATTRIBUTES


=head2 Images => ArrayRef[L<Paws::AppStream::Image>]

Information about the images.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results. If this
value is empty, only the first page is retrieved.


=head2 _request_id => Str


=cut

1;