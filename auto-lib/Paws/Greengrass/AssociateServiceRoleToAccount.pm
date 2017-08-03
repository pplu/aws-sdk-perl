
package Paws::Greengrass::AssociateServiceRoleToAccount;
  use Moose;
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateServiceRoleToAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/servicerole');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::AssociateServiceRoleToAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::AssociateServiceRoleToAccount - Arguments for method AssociateServiceRoleToAccount on Paws::Greengrass

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateServiceRoleToAccount on the 
AWS Greengrass service. Use the attributes of this class
as arguments to method AssociateServiceRoleToAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateServiceRoleToAccount.

As an example:

  $service_obj->AssociateServiceRoleToAccount(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 RoleArn => Str

Role arn you wish to associate with this account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateServiceRoleToAccount in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

