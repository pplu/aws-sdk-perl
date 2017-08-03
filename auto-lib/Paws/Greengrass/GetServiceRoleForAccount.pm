
package Paws::Greengrass::GetServiceRoleForAccount;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetServiceRoleForAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/servicerole');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::GetServiceRoleForAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetServiceRoleForAccount - Arguments for method GetServiceRoleForAccount on Paws::Greengrass

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServiceRoleForAccount on the 
AWS Greengrass service. Use the attributes of this class
as arguments to method GetServiceRoleForAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServiceRoleForAccount.

As an example:

  $service_obj->GetServiceRoleForAccount(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServiceRoleForAccount in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

