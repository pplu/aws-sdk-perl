
package Paws::SageMaker::CreateAppImageConfig;
  use Moose;
  has AppImageConfigName => (is => 'ro', isa => 'Str', required => 1);
  has KernelGatewayImageConfig => (is => 'ro', isa => 'Paws::SageMaker::KernelGatewayImageConfig');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAppImageConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateAppImageConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateAppImageConfig - Arguments for method CreateAppImageConfig on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAppImageConfig on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateAppImageConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAppImageConfig.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateAppImageConfigResponse = $api . sagemaker->CreateAppImageConfig(
      AppImageConfigName       => 'MyAppImageConfigName',
      KernelGatewayImageConfig => {
        KernelSpecs => [
          {
            Name        => 'MyKernelName',           # max: 1024
            DisplayName => 'MyKernelDisplayName',    # max: 1024; OPTIONAL
          },
          ...
        ],                                           # min: 1, max: 1
        FileSystemConfig => {
          DefaultGid => 1,                           # max: 65535; OPTIONAL
          DefaultUid => 1,                           # max: 65535; OPTIONAL
          MountPath  => 'MyMountPath',               # max: 1024; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $AppImageConfigArn = $CreateAppImageConfigResponse->AppImageConfigArn;

    # Returns a L<Paws::SageMaker::CreateAppImageConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateAppImageConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppImageConfigName => Str

The name of the AppImageConfig. Must be unique to your account.



=head2 KernelGatewayImageConfig => L<Paws::SageMaker::KernelGatewayImageConfig>

The KernelGatewayImageConfig.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

A list of tags to apply to the AppImageConfig.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAppImageConfig in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

