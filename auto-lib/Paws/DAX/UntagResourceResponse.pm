
package Paws::DAX::UntagResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DAX::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DAX::UntagResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::DAX::Tag>]

The tag keys that have been removed from the cluster.


=head2 _request_id => Str


=cut

1;