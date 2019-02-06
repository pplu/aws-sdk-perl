package Paws::FMS::Policy;
  use Moose;
  has ExcludeMap => (is => 'ro', isa => 'Paws::FMS::CustomerPolicyScopeMap');
  has ExcludeResourceTags => (is => 'ro', isa => 'Bool', required => 1);
  has IncludeMap => (is => 'ro', isa => 'Paws::FMS::CustomerPolicyScopeMap');
  has PolicyId => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyUpdateToken => (is => 'ro', isa => 'Str');
  has RemediationEnabled => (is => 'ro', isa => 'Bool', required => 1);
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::FMS::ResourceTag]');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has SecurityServicePolicyData => (is => 'ro', isa => 'Paws::FMS::SecurityServicePolicyData', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::Policy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::Policy object:

  $service_obj->Method(Att1 => { ExcludeMap => $value, ..., SecurityServicePolicyData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::Policy object:

  $result = $service_obj->Method(...);
  $result->Att1->ExcludeMap

=head1 DESCRIPTION

An AWS Firewall Manager policy.

=head1 ATTRIBUTES


=head2 ExcludeMap => L<Paws::FMS::CustomerPolicyScopeMap>

  Specifies the AWS account IDs to exclude from the policy. The
C<IncludeMap> values are evaluated first, with all the appropriate
account IDs added to the policy. Then the accounts listed in
C<ExcludeMap> are removed, resulting in the final list of accounts to
add to the policy.

The key to the map is C<ACCOUNT>. For example, a valid C<ExcludeMap>
would be C<{E<ldquo>ACCOUNTE<rdquo> : [E<ldquo>accountID1E<rdquo>,
E<ldquo>accountID2E<rdquo>]}>.


=head2 B<REQUIRED> ExcludeResourceTags => Bool

  If set to C<True>, resources with the tags that are specified in the
C<ResourceTag> array are not protected by the policy. If set to
C<False>, and the C<ResourceTag> array is not null, only resources with
the specified tags are associated with the policy.


=head2 IncludeMap => L<Paws::FMS::CustomerPolicyScopeMap>

  Specifies the AWS account IDs to include in the policy. If
C<IncludeMap> is null, all accounts in the organization in AWS
Organizations are included in the policy. If C<IncludeMap> is not null,
only values listed in C<IncludeMap> are included in the policy.

The key to the map is C<ACCOUNT>. For example, a valid C<IncludeMap>
would be C<{E<ldquo>ACCOUNTE<rdquo> : [E<ldquo>accountID1E<rdquo>,
E<ldquo>accountID2E<rdquo>]}>.


=head2 PolicyId => Str

  The ID of the AWS Firewall Manager policy.


=head2 B<REQUIRED> PolicyName => Str

  The friendly name of the AWS Firewall Manager policy.


=head2 PolicyUpdateToken => Str

  A unique identifier for each update to the policy. When issuing a
C<PutPolicy> request, the C<PolicyUpdateToken> in the request must
match the C<PolicyUpdateToken> of the current policy version. To get
the C<PolicyUpdateToken> of the current policy version, use a
C<GetPolicy> request.


=head2 B<REQUIRED> RemediationEnabled => Bool

  Indicates if the policy should be automatically applied to new
resources.


=head2 ResourceTags => ArrayRef[L<Paws::FMS::ResourceTag>]

  An array of C<ResourceTag> objects.


=head2 B<REQUIRED> ResourceType => Str

  The type of resource to protect with the policy, either an Application
Load Balancer or a CloudFront distribution. This is in the format shown
in AWS Resource Types Reference
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html).
Valid values are C<AWS::ElasticLoadBalancingV2::LoadBalancer> or
C<AWS::CloudFront::Distribution>.


=head2 B<REQUIRED> SecurityServicePolicyData => L<Paws::FMS::SecurityServicePolicyData>

  Details about the security service that is being used to protect the
resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

