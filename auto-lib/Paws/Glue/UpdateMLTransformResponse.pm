
package Paws::Glue::UpdateMLTransformResponse;
  use Moose;
  has TransformId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateMLTransformResponse

=head1 ATTRIBUTES


=head2 TransformId => Str

The unique identifier for the transform that was updated.


=head2 _request_id => Str


=cut

1;