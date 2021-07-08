
package Paws::LookoutVision::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::LookoutVision::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::LookoutVision::Tag>]

A map of tag keys and values attached to the specified model.


=head2 _request_id => Str


=cut

