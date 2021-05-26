
package Paws::Glue::CreateMLTransformResponse;
  use Moose;
  has TransformId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateMLTransformResponse

=head1 ATTRIBUTES


=head2 TransformId => Str

A unique identifier that is generated for the transform.


=head2 _request_id => Str


=cut

1;