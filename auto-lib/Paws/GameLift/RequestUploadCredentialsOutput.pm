# Generated from json/callresult_class.tt

package Paws::GameLift::RequestUploadCredentialsOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_AwsCredentials GameLift_S3Location/;
  has StorageLocation => (is => 'ro', isa => GameLift_S3Location);
  has UploadCredentials => (is => 'ro', isa => GameLift_AwsCredentials);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UploadCredentials' => {
                                        'class' => 'Paws::GameLift::AwsCredentials',
                                        'type' => 'GameLift_AwsCredentials'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StorageLocation' => {
                                      'class' => 'Paws::GameLift::S3Location',
                                      'type' => 'GameLift_S3Location'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::RequestUploadCredentialsOutput

=head1 ATTRIBUTES


=head2 StorageLocation => GameLift_S3Location

Amazon S3 path and key, identifying where the game build files are
stored.


=head2 UploadCredentials => GameLift_AwsCredentials

AWS credentials required when uploading a game build to the storage
location. These credentials have a limited lifespan and are valid only
for the build they were issued for.


=head2 _request_id => Str


=cut

1;