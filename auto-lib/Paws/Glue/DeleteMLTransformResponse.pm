
package Paws::Glue::DeleteMLTransformResponse;
  use Moose;
  has TransformId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteMLTransformResponse

=head1 ATTRIBUTES


=head2 TransformId => Str

The unique identifier of the transform that was deleted.


=head2 _request_id => Str


=cut

1;