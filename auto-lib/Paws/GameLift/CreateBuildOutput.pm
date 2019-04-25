
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

Amazon S3 location for your game build file, including bucket name and
key.


=head2 UploadCredentials => L<Paws::GameLift::AwsCredentials>

This element is returned only when the operation is called without a
storage location. It contains credentials to use when you are uploading
a build file to an Amazon S3 bucket that is owned by Amazon GameLift.
Credentials have a limited life span. To refresh these credentials,
call RequestUploadCredentials.


=head2 _request_id => Str


=cut

1;