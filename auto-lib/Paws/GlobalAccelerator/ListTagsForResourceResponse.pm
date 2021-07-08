
package Paws::GlobalAccelerator::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::GlobalAccelerator::Tag>]

Root level tag for the Tags parameters.


=head2 _request_id => Str


=cut

1;