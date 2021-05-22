
package Paws::SageMaker::CreateDomain;
  use Moose;
  has AppNetworkAccessType => (is => 'ro', isa => 'Str');
  has AuthMode => (is => 'ro', isa => 'Str', required => 1);
  has DefaultUserSettings => (is => 'ro', isa => 'Paws::SageMaker::UserSettings', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has HomeEfsFileSystemKmsKeyId => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateDomain - Arguments for method CreateDomain on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDomain on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDomain.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateDomainResponse = $api . sagemaker->CreateDomain(
      AuthMode            => 'SSO',
      DefaultUserSettings => {
        ExecutionRole            => 'MyRoleArn',  # min: 20, max: 2048; OPTIONAL
        JupyterServerAppSettings => {
          DefaultResourceSpec => {
            InstanceType => 'system'
            , # values: system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge; OPTIONAL
            SageMakerImageArn => 'MyImageArn',    # max: 256; OPTIONAL
            SageMakerImageVersionArn =>
              'MyImageVersionArn',                # max: 256; OPTIONAL
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
            SageMakerImageArn => 'MyImageArn',    # max: 256; OPTIONAL
            SageMakerImageVersionArn =>
              'MyImageVersionArn',                # max: 256; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        SecurityGroups => [
          'MySecurityGroupId', ...    # max: 32
        ],                            # max: 5; OPTIONAL
        SharingSettings => {
          NotebookOutputOption =>
            'Allowed',                # values: Allowed, Disabled; OPTIONAL
          S3KmsKeyId   => 'MyKmsKeyId',    # max: 2048; OPTIONAL
          S3OutputPath => 'MyS3Uri',       # max: 1024; OPTIONAL
        },    # OPTIONAL
        TensorBoardAppSettings => {
          DefaultResourceSpec => {
            InstanceType => 'system'
            , # values: system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge; OPTIONAL
            SageMakerImageArn => 'MyImageArn',    # max: 256; OPTIONAL
            SageMakerImageVersionArn =>
              'MyImageVersionArn',                # max: 256; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      DomainName => 'MyDomainName',
      SubnetIds  => [
        'MySubnetId', ...    # max: 32
      ],
      VpcId                     => 'MyVpcId',
      AppNetworkAccessType      => 'PublicInternetOnly',    # OPTIONAL
      HomeEfsFileSystemKmsKeyId => 'MyKmsKeyId',            # OPTIONAL
      KmsKeyId                  => 'MyKmsKeyId',            # OPTIONAL
      Tags                      => [
        {
          Key   => 'MyTagKey',                              # min: 1, max: 128
          Value => 'MyTagValue',                            # max: 256

        },
        ...
      ],                                                    # OPTIONAL
    );

    # Results:
    my $DomainArn = $CreateDomainResponse->DomainArn;
    my $Url       = $CreateDomainResponse->Url;

    # Returns a L<Paws::SageMaker::CreateDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateDomain>

=head1 ATTRIBUTES


=head2 AppNetworkAccessType => Str

Specifies the VPC used for non-EFS traffic. The default value is
C<PublicInternetOnly>.

=over

=item *

C<PublicInternetOnly> - Non-EFS traffic is through a VPC managed by
Amazon SageMaker, which allows direct internet access

=item *

C<VpcOnly> - All Studio traffic is through the specified VPC and
subnets

=back


Valid values are: C<"PublicInternetOnly">, C<"VpcOnly">

=head2 B<REQUIRED> AuthMode => Str

The mode of authentication that members use to access the domain.

Valid values are: C<"SSO">, C<"IAM">

=head2 B<REQUIRED> DefaultUserSettings => L<Paws::SageMaker::UserSettings>

The default settings to use to create a user profile when
C<UserSettings> isn't specified in the call to the C<CreateUserProfile>
API.

C<SecurityGroups> is aggregated when specified in both calls. For all
other settings in C<UserSettings>, the values specified in
C<CreateUserProfile> take precedence over those specified in
C<CreateDomain>.



=head2 B<REQUIRED> DomainName => Str

A name for the domain.



=head2 HomeEfsFileSystemKmsKeyId => Str

This member is deprecated and replaced with C<KmsKeyId>.



=head2 KmsKeyId => Str

SageMaker uses AWS KMS to encrypt the EFS volume attached to the domain
with an AWS managed customer master key (CMK) by default. For more
control, specify a customer managed CMK.



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The VPC subnets that Studio uses for communication.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Tags to associated with the Domain. Each tag consists of a key and an
optional value. Tag keys must be unique per resource. Tags are
searchable using the C<Search> API.

Tags that you specify for the Domain are also added to all Apps that
the Domain launches.



=head2 B<REQUIRED> VpcId => Str

The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses for
communication.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDomain in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

