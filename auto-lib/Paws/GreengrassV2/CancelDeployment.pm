
package Paws::GreengrassV2::CancelDeployment;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deploymentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/v2/deployments/{deploymentId}/cancel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GreengrassV2::CancelDeploymentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::CancelDeployment - Arguments for method CancelDeployment on L<Paws::GreengrassV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelDeployment on the
L<AWS IoT Greengrass V2|Paws::GreengrassV2> service. Use the attributes of this class
as arguments to method CancelDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelDeployment.

=head1 SYNOPSIS

    my $greengrass = Paws->service('GreengrassV2');
    my $CancelDeploymentResponse = $greengrass->CancelDeployment(
      DeploymentId => 'MyNonEmptyString',

    );

    # Results:
    my $Message = $CancelDeploymentResponse->Message;

    # Returns a L<Paws::GreengrassV2::CancelDeploymentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CancelDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentId => Str

The ID of the deployment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelDeployment in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

