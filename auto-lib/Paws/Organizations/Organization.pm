package Paws::Organizations::Organization;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AvailablePolicyTypes => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::PolicyTypeSummary]');
  has FeatureSet => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has MasterAccountArn => (is => 'ro', isa => 'Str');
  has MasterAccountEmail => (is => 'ro', isa => 'Str');
  has MasterAccountId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::Organization

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Organizations::Organization object:

  $service_obj->Method(Att1 => { Arn => $value, ..., MasterAccountId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Organizations::Organization object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains details about an organization. An organization is a collection
of accounts that are centrally managed together using consolidated
billing, organized hierarchically with organizational units (OUs), and
controlled with policies .

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of an organization.

For more information about ARNs in Organizations, see ARN Formats
Supported by Organizations
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns)
in the I<AWS Organizations User Guide>.


=head2 AvailablePolicyTypes => ArrayRef[L<Paws::Organizations::PolicyTypeSummary>]

  A list of policy types that are enabled for this organization. For
example, if your organization has all features enabled, then service
control policies (SCPs) are included in the list.

Even if a policy type is shown as available in the organization, you
can separately enable and disable them at the root level by using
EnablePolicyType and DisablePolicyType. Use ListRoots to see the status
of a policy type in that root.


=head2 FeatureSet => Str

  Specifies the functionality that currently is available to the
organization. If set to "ALL", then all features are enabled and
policies can be applied to accounts in the organization. If set to
"CONSOLIDATED_BILLING", then only consolidated billing functionality is
available. For more information, see Enabling All Features in Your
Organization
(http://docs.aws.amazon.com/IAM/latest/UserGuide/orgs_manage_org_support-all-features.html)
in the I<AWS Organizations User Guide>.


=head2 Id => Str

  The unique identifier (ID) of an organization.

The regex pattern (http://wikipedia.org/wiki/regex) for an organization
ID string requires "o-" followed by from 10 to 32 lower-case letters or
digits.


=head2 MasterAccountArn => Str

  The Amazon Resource Name (ARN) of the account that is designated as the
master account for the organization.

For more information about ARNs in Organizations, see ARN Formats
Supported by Organizations
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns)
in the I<AWS Organizations User Guide>.


=head2 MasterAccountEmail => Str

  The email address that is associated with the AWS account that is
designated as the master account for the organization.


=head2 MasterAccountId => Str

  The unique identifier (ID) of the master account of an organization.

The regex pattern (http://wikipedia.org/wiki/regex) for an account ID
string requires exactly 12 digits.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

