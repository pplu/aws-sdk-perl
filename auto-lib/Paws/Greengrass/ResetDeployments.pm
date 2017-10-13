
package Paws::Greengrass::ResetDeployments;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has Force => (is => 'ro', isa => 'Bool');
  has GroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetDeployments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/groups/{GroupId}/deployments/$reset');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::ResetDeploymentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ResetDeployments - Arguments for method ResetDeployments on Paws::Greengrass

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetDeployments on the 
AWS Greengrass service. Use the attributes of this class
as arguments to method ResetDeployments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetDeployments.

As an example:

  $service_obj->ResetDeployments(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

The client token used to request idempotent operations.



=head2 Force => Bool

When set to true, perform a best-effort only core reset.



=head2 B<REQUIRED> GroupId => Str

The unique Id of the AWS Greengrass Group




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetDeployments in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

