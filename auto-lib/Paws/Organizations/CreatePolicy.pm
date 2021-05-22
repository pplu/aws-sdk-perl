
package Paws::Organizations::CreatePolicy;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::Tag]');
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
    # To create a service control policy
    # The following example shows how to create a service control policy (SCP)
    # that is named AllowAllS3Actions. The JSON string in the content parameter
    # specifies the content in the policy. The parameter string is escaped with
    # backslashes to ensure that the embedded double quotes in the JSON policy
    # are treated as literals in the parameter, which itself is surrounded by
    # double quotes:

    my $CreatePolicyResponse = $organizations->CreatePolicy(
      'Content' =>
'{\"Version\":\"2012-10-17\",\"Statement\":{\"Effect\":\"Allow\",\"Action\":\"s3:*\"}}',
      'Description' =>
        'Enables admins of attached accounts to delegate all S3 permissions',
      'Name' => 'AllowAllS3Actions',
      'Type' => 'SERVICE_CONTROL_POLICY'
    );

    # Results:
    my $Policy = $CreatePolicyResponse->Policy;

    # Returns a L<Paws::Organizations::CreatePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/CreatePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

The policy text content to add to the new policy. The text that you
supply must adhere to the rules of the policy type you specify in the
C<Type> parameter.



=head2 B<REQUIRED> Description => Str

An optional description to assign to the policy.



=head2 B<REQUIRED> Name => Str

The friendly name to assign to the policy.

The regex pattern (http://wikipedia.org/wiki/regex) that is used to
validate this parameter is a string of any of the characters in the
ASCII character range.



=head2 Tags => ArrayRef[L<Paws::Organizations::Tag>]

A list of tags that you want to attach to the newly created policy. For
each tag in the list, you must specify both a tag key and a value. You
can set the value to an empty string, but you can't set it to C<null>.
For more information about tagging, see Tagging AWS Organizations
resources
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html)
in the AWS Organizations User Guide.

If any one of the tags is invalid or if you exceed the allowed number
of tags for a policy, then the entire request fails and the policy is
not created.



=head2 B<REQUIRED> Type => Str

The type of policy to create. You can specify one of the following
values:

=over

=item *

AISERVICES_OPT_OUT_POLICY
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html)

=item *

BACKUP_POLICY
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html)

=item *

SERVICE_CONTROL_POLICY
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html)

=item *

TAG_POLICY
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)

=back


Valid values are: C<"SERVICE_CONTROL_POLICY">, C<"TAG_POLICY">, C<"BACKUP_POLICY">, C<"AISERVICES_OPT_OUT_POLICY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePolicy in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

