
package Paws::LookoutVision::DeleteProjectResponse;
  use Moose;
  has ProjectArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::DeleteProjectResponse

=head1 ATTRIBUTES


=head2 ProjectArn => Str

The Amazon Resource Name (ARN) of the project that was deleted.


=head2 _request_id => Str


=cut

