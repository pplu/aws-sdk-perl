
package Paws::Rekognition::CreateProjectVersionResponse;
  use Moose;
  has ProjectVersionArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CreateProjectVersionResponse

=head1 ATTRIBUTES


=head2 ProjectVersionArn => Str

The ARN of the model version that was created. Use
C<DescribeProjectVersion> to get the current status of the training
operation.


=head2 _request_id => Str


=cut

1;