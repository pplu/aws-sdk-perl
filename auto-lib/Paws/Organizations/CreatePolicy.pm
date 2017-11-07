
package Paws::Organizations::CreatePolicy;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::CreatePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::CreatePolicy - Arguments for method CreatePolicy on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePolicy on the 
AWS Organizations service. Use the attributes of this class
as arguments to method CreatePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePolicy.

As an example:

  $service_obj->CreatePolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

The policy content to add to the new policy. For example, if you create
a service control policy (SCP), this string must be JSON text that
specifies the permissions that admins in attached accounts can delegate
to their users, groups, and roles. For more information about the SCP
syntax, see Service Control Policy Syntax in the I<AWS Organizations
User Guide>.



=head2 B<REQUIRED> Description => Str

An optional description to assign to the policy.



=head2 B<REQUIRED> Name => Str

The friendly name to assign to the policy.

The regex pattern that is used to validate this parameter is a string
of any of the characters in the ASCII character range.



=head2 B<REQUIRED> Type => Str

The type of policy to create.

In the current release, the only type of policy that you can create is
a service control policy (SCP).

Valid values are: C<"SERVICE_CONTROL_POLICY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePolicy in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

