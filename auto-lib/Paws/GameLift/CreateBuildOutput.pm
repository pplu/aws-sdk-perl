# Generated from json/callresult_class.tt

package Paws::GameLift::CreateBuildOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_AwsCredentials GameLift_S3Location GameLift_Build/;
  has Build => (is => 'ro', isa => GameLift_Build);
  has StorageLocation => (is => 'ro', isa => GameLift_S3Location);
  has UploadCredentials => (is => 'ro', isa => GameLift_AwsCredentials);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Build' => {
                            'type' => 'GameLift_Build',
                            'class' => 'Paws::GameLift::Build'
                          },
               'StorageLocation' => {
                                      'type' => 'GameLift_S3Location',
                                      'class' => 'Paws::GameLift::S3Location'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UploadCredentials' => {
                                        'class' => 'Paws::GameLift::AwsCredentials',
                                        'type' => 'GameLift_AwsCredentials'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateBuildOutput

=head1 ATTRIBUTES


=head2 Build => GameLift_Build

The newly created build record, including a unique build ID and status.


=head2 StorageLocation => GameLift_S3Location

Amazon S3 location for your game build file, including bucket name and
key.


=head2 UploadCredentials => GameLift_AwsCredentials

This element is returned only when the operation is called without a
storage location. It contains credentials to use when you are uploading
a build file to an Amazon S3 bucket that is owned by Amazon GameLift.
Credentials have a limited life span. To refresh these credentials,
call RequestUploadCredentials.


=head2 _request_id => Str


=cut

1;