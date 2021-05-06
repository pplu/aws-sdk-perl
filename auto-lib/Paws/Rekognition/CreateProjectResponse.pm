
package Paws::Rekognition::CreateProjectResponse;
  use Moose;
  has ProjectArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CreateProjectResponse

=head1 ATTRIBUTES


=head2 ProjectArn => Str

The Amazon Resource Name (ARN) of the new project. You can use the ARN
to configure IAM access to the project.


=head2 _request_id => Str


=cut

1;