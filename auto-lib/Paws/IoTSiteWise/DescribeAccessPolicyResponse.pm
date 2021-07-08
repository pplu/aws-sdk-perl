
package Paws::IoTSiteWise::DescribeAccessPolicyResponse;
  use Moose;
  has AccessPolicyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessPolicyArn', required => 1);
  has AccessPolicyCreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessPolicyCreationDate', required => 1);
  has AccessPolicyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessPolicyId', required => 1);
  has AccessPolicyIdentity => (is => 'ro', isa => 'Paws::IoTSiteWise::Identity', traits => ['NameInRequest'], request_name => 'accessPolicyIdentity', required => 1);
  has AccessPolicyLastUpdateDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessPolicyLastUpdateDate', required => 1);
  has AccessPolicyPermission => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessPolicyPermission', required => 1);
  has AccessPolicyResource => (is => 'ro', isa => 'Paws::IoTSiteWise::Resource', traits => ['NameInRequest'], request_name => 'accessPolicyResource', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeAccessPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessPolicyArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the access policy, which has the following format.

C<arn:${Partition}:iotsitewise:${Region}:${Account}:access-policy/${AccessPolicyId}>


=head2 B<REQUIRED> AccessPolicyCreationDate => Str

The date the access policy was created, in Unix epoch time.


=head2 B<REQUIRED> AccessPolicyId => Str

The ID of the access policy.


=head2 B<REQUIRED> AccessPolicyIdentity => L<Paws::IoTSiteWise::Identity>

The identity (AWS SSO user, AWS SSO group, or IAM user) to which this
access policy applies.


=head2 B<REQUIRED> AccessPolicyLastUpdateDate => Str

The date the access policy was last updated, in Unix epoch time.


=head2 B<REQUIRED> AccessPolicyPermission => Str

The access policy permission. Note that a project C<ADMINISTRATOR> is
also known as a project owner.

Valid values are: C<"ADMINISTRATOR">, C<"VIEWER">
=head2 B<REQUIRED> AccessPolicyResource => L<Paws::IoTSiteWise::Resource>

The AWS IoT SiteWise Monitor resource (portal or project) to which this
access policy provides access.


=head2 _request_id => Str


=cut

