
package Paws::Inspector::UpdateApplication;
  use Moose;
  has applicationArn => (is => 'ro', isa => 'Str');
  has applicationName => (is => 'ro', isa => 'Str');
  has resourceGroupArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::UpdateApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::UpdateApplication - Arguments for method UpdateApplication on Paws::Inspector

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplication on the 
Amazon Inspector service. Use the attributes of this class
as arguments to method UpdateApplication.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplication.

As an example:

  $service_obj->UpdateApplication(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 applicationArn => Str

  

Application ARN that you want to update.










=head2 applicationName => Str

  

Application name that you want to update.










=head2 resourceGroupArn => Str

  

The resource group ARN that you want to update.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplication in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

