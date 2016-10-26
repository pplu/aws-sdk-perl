
package Paws::GameLift::CreateBuildOutput;
  use Moose;
  has Build => (is => 'ro', isa => 'Paws::GameLift::Build');
  has StorageLocation => (is => 'ro', isa => 'Paws::GameLift::S3Location');
  has UploadCredentials => (is => 'ro', isa => 'Paws::GameLift::AwsCredentials');


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateBuildOutput

=head1 ATTRIBUTES


=head2 Build => L<Paws::GameLift::Build>

Set of properties for the newly created build.



=head2 StorageLocation => L<Paws::GameLift::S3Location>

Amazon S3 path and key, identifying where the game build files are
stored.



=head2 UploadCredentials => L<Paws::GameLift::AwsCredentials>

AWS credentials required when uploading a game build to the storage
location. These credentials have a limited lifespan and are valid only
for the build they were issued for. If you need to get fresh
credentials, call C< RequestUploadCredentials >.




=cut

1;