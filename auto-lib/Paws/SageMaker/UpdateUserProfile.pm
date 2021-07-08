
package Paws::SageMaker::UpdateUserProfile;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has UserProfileName => (is => 'ro', isa => 'Str', required => 1);
  has UserSettings => (is => 'ro', isa => 'Paws::SageMaker::UserSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateUserProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateUserProfile - Arguments for method UpdateUserProfile on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUserProfile on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateUserProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUserProfile.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateUserProfileResponse = $api . sagemaker->UpdateUserProfile(
      DomainId        => 'MyDomainId',
      UserProfileName => 'MyUserProfileName',
      UserSettings    => {
        ExecutionRole            => 'MyRoleArn',  # min: 20, max: 2048; OPTIONAL
        JupyterServerAppSettings => {
          DefaultResourceSpec => {
            InstanceType => 'system'
            , # values: system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge; OPTIONAL
            SageMakerImageArn        => 'MyImageArn',    # max: 256; OPTIONAL
            SageMakerImageVersionArn =>
              'MyImageVersionArn',                       # max: 256; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        KernelGatewayAppSettings => {
          CustomImages => [
            {
              AppImageConfigName => 'MyAppImageConfigName',    # max: 63
              ImageName          => 'MyImageName',             # min: 1, max: 63
              ImageVersionNumber => 1,                         # OPTIONAL
            },
            ...
          ],    # max: 30; OPTIONAL
          DefaultResourceSpec => {
            InstanceType => 'system'
            , # values: system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge; OPTIONAL
            SageMakerImageArn        => 'MyImageArn',    # max: 256; OPTIONAL
            SageMakerImageVersionArn =>
              'MyImageVersionArn',                       # max: 256; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        SecurityGroups => [
          'MySecurityGroupId', ...    # max: 32
        ],    # max: 5; OPTIONAL
        SharingSettings => {
          NotebookOutputOption =>
            'Allowed',    # values: Allowed, Disabled; OPTIONAL
          S3KmsKeyId   => 'MyKmsKeyId',    # max: 2048; OPTIONAL
          S3OutputPath => 'MyS3Uri',       # max: 1024; OPTIONAL
        },    # OPTIONAL
        TensorBoardAppSettings => {
          DefaultResourceSpec => {
            InstanceType => 'system'
            , # values: system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge; OPTIONAL
            SageMakerImageArn        => 'MyImageArn',    # max: 256; OPTIONAL
            SageMakerImageVersionArn =>
              'MyImageVersionArn',                       # max: 256; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $UserProfileArn = $UpdateUserProfileResponse->UserProfileArn;

    # Returns a L<Paws::SageMaker::UpdateUserProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateUserProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The domain ID.



=head2 B<REQUIRED> UserProfileName => Str

The user profile name.



=head2 UserSettings => L<Paws::SageMaker::UserSettings>

A collection of settings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUserProfile in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

