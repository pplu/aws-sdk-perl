
package Paws::GameLift::CreateBuildOutput;
  use Moose;
  has Build => (is => 'ro', isa => 'Paws::GameLift::Build');
  has StorageLocation => (is => 'ro', isa => 'Paws::GameLift::S3Location');
  has UploadCredentials => (is => 'ro', isa => 'Paws::GameLift::AwsCredentials');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateBuildOutput

=head1 ATTRIBUTES


=head2 Build => L<Paws::GameLift::Build>

The newly created build record, including a unique build ID and status.


=head2 StorageLocation => L<Paws::GameLift::S3Location>

Amazon S3 location specified in the request.


=head2 UploadCredentials => L<Paws::GameLift::AwsCredentials>

This element is not currently in use.


=head2 _request_id => Str


=cut

1;