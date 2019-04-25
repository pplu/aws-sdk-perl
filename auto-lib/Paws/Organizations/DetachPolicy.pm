
package Paws::Organizations::DetachPolicy;
  use Moose;
  has PolicyId => (is => 'ro', isa => 'Str', required => 1);
  has TargetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DetachPolicy - Arguments for method DetachPolicy on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachPolicy on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method DetachPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachPolicy.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    $organizations->DetachPolicy(
      PolicyId => 'MyPolicyId',
      TargetId => 'MyPolicyTargetId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/DetachPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyId => Str

The unique identifier (ID) of the policy you want to detach. You can
get the ID from the ListPolicies or ListPoliciesForTarget operations.

The regex pattern (http://wikipedia.org/wiki/regex) for a policy ID
string requires "p-" followed by from 8 to 128 lower-case letters or
digits.



=head2 B<REQUIRED> TargetId => Str

The unique identifier (ID) of the root, OU, or account from which you
want to detach the policy. You can get the ID from the ListRoots,
ListOrganizationalUnitsForParent, or ListAccounts operations.

The regex pattern (http://wikipedia.org/wiki/regex) for a target ID
string requires one of the following:

=over

=item *

Root: a string that begins with "r-" followed by from 4 to 32
lower-case letters or digits.

=item *

Account: a string that consists of exactly 12 digits.

=item *

Organizational unit (OU): a string that begins with "ou-" followed by
from 4 to 32 lower-case letters or digits (the ID of the root that the
OU is in) followed by a second "-" dash and from 8 to 32 additional
lower-case letters or digits.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachPolicy in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

