
package Paws::Cloud9::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Cloud9::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::Cloud9::Tag>]

The list of tags associated with the Cloud9 development environment.


=head2 _request_id => Str


=cut

1;