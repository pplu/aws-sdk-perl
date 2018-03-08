
package Paws::WAF::DeletePermissionPolicy;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePermissionPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::DeletePermissionPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::DeletePermissionPolicy - Arguments for method DeletePermissionPolicy on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePermissionPolicy on the 
AWS WAF service. Use the attributes of this class
as arguments to method DeletePermissionPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePermissionPolicy.

As an example:

  $service_obj->DeletePermissionPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the RuleGroup from which you want to
delete the policy.

The user making the request must be the owner of the RuleGroup.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePermissionPolicy in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
