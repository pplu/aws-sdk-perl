
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
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method CreatePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePolicy.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    my $CreatePolicyResponse = $organizations->CreatePolicy(
      Content     => 'MyPolicyContent',
      Description => 'MyPolicyDescription',
      Name        => 'MyPolicyName',
      Type        => 'SERVICE_CONTROL_POLICY',

    );

    # Results:
    my $Policy = $CreatePolicyResponse->Policy;

    # Returns a L<Paws::Organizations::CreatePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/CreatePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

The policy content to add to the new policy. For example, if you create
a service control policy
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html)
(SCP), this string must be JSON text that specifies the permissions
that admins in attached accounts can delegate to their users, groups,
and roles. For more information about the SCP syntax, see Service
Control Policy Syntax
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html)
in the I<AWS Organizations User Guide>.



=head2 B<REQUIRED> Description => Str

An optional description to assign to the policy.



=head2 B<REQUIRED> Name => Str

The friendly name to assign to the policy.

The regex pattern (http://wikipedia.org/wiki/regex) that is used to
validate this parameter is a string of any of the characters in the
ASCII character range.



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

