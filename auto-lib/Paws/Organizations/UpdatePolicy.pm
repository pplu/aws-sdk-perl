
package Paws::Organizations::UpdatePolicy;
  use Moose;
  has Content => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has PolicyId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::UpdatePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::UpdatePolicy - Arguments for method UpdatePolicy on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePolicy on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method UpdatePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePolicy.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    my $UpdatePolicyResponse = $organizations->UpdatePolicy(
      PolicyId    => 'MyPolicyId',
      Content     => 'MyPolicyContent',        # OPTIONAL
      Description => 'MyPolicyDescription',    # OPTIONAL
      Name        => 'MyPolicyName',           # OPTIONAL
    );

    # Results:
    my $Policy = $UpdatePolicyResponse->Policy;

    # Returns a L<Paws::Organizations::UpdatePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/UpdatePolicy>

=head1 ATTRIBUTES


=head2 Content => Str

If provided, the new content for the policy. The text must be correctly
formatted JSON that complies with the syntax for the policy's type. For
more information, see Service Control Policy Syntax
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html)
in the I<AWS Organizations User Guide>.



=head2 Description => Str

If provided, the new description for the policy.



=head2 Name => Str

If provided, the new name for the policy.

The regex pattern (http://wikipedia.org/wiki/regex) that is used to
validate this parameter is a string of any of the characters in the
ASCII character range.



=head2 B<REQUIRED> PolicyId => Str

The unique identifier (ID) of the policy that you want to update.

The regex pattern (http://wikipedia.org/wiki/regex) for a policy ID
string requires "p-" followed by from 8 to 128 lower-case letters or
digits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePolicy in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

