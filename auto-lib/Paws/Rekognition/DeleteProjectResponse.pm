
package Paws::Rekognition::DeleteProjectResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DeleteProjectResponse

=head1 ATTRIBUTES


=head2 Status => Str

The current status of the delete project operation.

Valid values are: C<"CREATING">, C<"CREATED">, C<"DELETING">
=head2 _request_id => Str


=cut

1;