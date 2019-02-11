
package Paws::Greengrass::GetDeploymentStatus;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DeploymentId', required => 1);
  has GroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeploymentStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::GetDeploymentStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetDeploymentStatus - Arguments for method GetDeploymentStatus on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeploymentStatus on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetDeploymentStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeploymentStatus.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetDeploymentStatusResponse = $greengrass->GetDeploymentStatus(
      DeploymentId => 'My__string',
      GroupId      => 'My__string',

    );

    # Results:
    my $DeploymentStatus = $GetDeploymentStatusResponse->DeploymentStatus;
    my $DeploymentType   = $GetDeploymentStatusResponse->DeploymentType;
    my $ErrorDetails     = $GetDeploymentStatusResponse->ErrorDetails;
    my $ErrorMessage     = $GetDeploymentStatusResponse->ErrorMessage;
    my $UpdatedAt        = $GetDeploymentStatusResponse->UpdatedAt;

    # Returns a L<Paws::Greengrass::GetDeploymentStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetDeploymentStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentId => Str

The ID of the deployment.



=head2 B<REQUIRED> GroupId => Str

The ID of the Greengrass group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeploymentStatus in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

