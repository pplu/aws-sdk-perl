
package Paws::Greengrass::StopBulkDeployment;
  use Moose;
  has BulkDeploymentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'BulkDeploymentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopBulkDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/bulk/deployments/{BulkDeploymentId}/$stop');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::StopBulkDeploymentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::StopBulkDeployment - Arguments for method StopBulkDeployment on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopBulkDeployment on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method StopBulkDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopBulkDeployment.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $StopBulkDeploymentResponse = $greengrass->StopBulkDeployment(
      BulkDeploymentId => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/StopBulkDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BulkDeploymentId => Str

The ID of the bulk deployment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopBulkDeployment in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

