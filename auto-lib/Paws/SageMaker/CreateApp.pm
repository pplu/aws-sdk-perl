
package Paws::SageMaker::CreateApp;
  use Moose;
  has AppName => (is => 'ro', isa => 'Str', required => 1);
  has AppType => (is => 'ro', isa => 'Str', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceSpec => (is => 'ro', isa => 'Paws::SageMaker::ResourceSpec');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has UserProfileName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateAppResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateApp - Arguments for method CreateApp on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApp on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApp.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateAppResponse = $api . sagemaker->CreateApp(
      AppName         => 'MyAppName',
      AppType         => 'JupyterServer',
      DomainId        => 'MyDomainId',
      UserProfileName => 'MyUserProfileName',
      ResourceSpec    => {
        EnvironmentArn => 'MyEnvironmentArn',    # max: 256; OPTIONAL
        InstanceType   => 'system'
        , # values: system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AppArn = $CreateAppResponse->AppArn;

    # Returns a L<Paws::SageMaker::CreateAppResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateApp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppName => Str

The name of the app.



=head2 B<REQUIRED> AppType => Str

The type of app.

Valid values are: C<"JupyterServer">, C<"KernelGateway">, C<"TensorBoard">

=head2 B<REQUIRED> DomainId => Str

The domain ID.



=head2 ResourceSpec => L<Paws::SageMaker::ResourceSpec>

The instance type and quantity.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Each tag consists of a key and an optional value. Tag keys must be
unique per resource.



=head2 B<REQUIRED> UserProfileName => Str

The user profile name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApp in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

