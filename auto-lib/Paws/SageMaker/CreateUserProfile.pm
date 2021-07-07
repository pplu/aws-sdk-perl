
package Paws::SageMaker::CreateUserProfile;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has SingleSignOnUserIdentifier => (is => 'ro', isa => 'Str');
  has SingleSignOnUserValue => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has UserProfileName => (is => 'ro', isa => 'Str', required => 1);
  has UserSettings => (is => 'ro', isa => 'Paws::SageMaker::UserSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateUserProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateUserProfile - Arguments for method CreateUserProfile on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUserProfile on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateUserProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUserProfile.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateUserProfileResponse = $api . sagemaker->CreateUserProfile(
      DomainId                   => 'MyDomainId',
      UserProfileName            => 'MyUserProfileName',
      SingleSignOnUserIdentifier => 'MySingleSignOnUserIdentifier',   # OPTIONAL
      SingleSignOnUserValue      => 'MyString256',                    # OPTIONAL
      Tags                       => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      UserSettings => {
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
    my $UserProfileArn = $CreateUserProfileResponse->UserProfileArn;

    # Returns a L<Paws::SageMaker::CreateUserProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateUserProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The ID of the associated Domain.



=head2 SingleSignOnUserIdentifier => Str

A specifier for the type of value specified in SingleSignOnUserValue.
Currently, the only supported value is "UserName". If the Domain's
AuthMode is SSO, this field is required. If the Domain's AuthMode is
not SSO, this field cannot be specified.



=head2 SingleSignOnUserValue => Str

The username of the associated Amazon Web Services Single Sign-On User
for this UserProfile. If the Domain's AuthMode is SSO, this field is
required, and must match a valid username of a user in your directory.
If the Domain's AuthMode is not SSO, this field cannot be specified.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Each tag consists of a key and an optional value. Tag keys must be
unique per resource.

Tags that you specify for the User Profile are also added to all Apps
that the User Profile launches.



=head2 B<REQUIRED> UserProfileName => Str

A name for the UserProfile. This value is not case sensitive.



=head2 UserSettings => L<Paws::SageMaker::UserSettings>

A collection of settings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUserProfile in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

