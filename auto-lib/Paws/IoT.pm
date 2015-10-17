package Paws::IoT;
  warn "Paws::IoT is not stable / supported / entirely developed";
  use Moose;
  sub service { 'iot' }
  sub version { '2015-05-28' }
  sub flattened_arrays { 0 }

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';


  our $AUTOLOAD;
  sub AUTOLOAD {
    my $method = $AUTOLOAD;
    my $self = shift;
    my $call_object = $self->new_with_coercions($method, @_);
    return $self->caller->do_call($self, $call_object);
  }


  sub operations { qw/AcceptCertificateTransfer AttachPrincipalPolicy AttachThingPrincipal CancelCertificateTransfer CreateCertificateFromCsr CreateKeysAndCertificate CreatePolicy CreatePolicyVersion CreateThing CreateTopicRule DeleteCertificate DeletePolicy DeletePolicyVersion DeleteThing DeleteTopicRule DescribeCertificate DescribeEndpoint DescribeThing DetachPrincipalPolicy DetachThingPrincipal GetLoggingOptions GetPolicy GetPolicyVersion GetTopicRule ListCertificates ListPolicies ListPolicyVersions ListPrincipalPolicies ListPrincipalThings ListThingPrincipals ListThings ListTopicRules RejectCertificateTransfer ReplaceTopicRule SetDefaultPolicyVersion SetLoggingOptions TransferCertificate UpdateCertificate UpdateThing / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT - Perl Interface to AWS AWS IoT

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoT');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS IoT (Beta)

B<AWS IoT is in beta and is subject to change>

AWS IoT provides secure, bi-directional communication between
Internet-connected things (such as sensors, actuators, embedded
devices, or smart appliances) and the AWS cloud. You can discover your
custom IoT-Data endpoint to communicate with, configure rules for data
processing and integration with other services, organize resources
associated with each thing (Thing Registry), configure logging, and
create and manage policies and credentials to authenticate things.

For more information about how AWS IoT works, see the Developer Guide.

=head1 METHODS

=head2 AcceptCertificateTransfer(CertificateId => Str, [SetAsActive => Bool])

Each argument is described in detail in: L<Paws::IoT::AcceptCertificateTransfer>

Returns: nothing

  Accepts a pending certificate transfer. The default state of the
certificate is INACTIVE.

To check for pending certificate transfers, call ListCertificates to
enumerate your certificates.


=head2 AttachPrincipalPolicy(PolicyName => Str, Principal => Str)

Each argument is described in detail in: L<Paws::IoT::AttachPrincipalPolicy>

Returns: nothing

  Attaches the specified policy to the specified principal (certificate
or other credential).


=head2 AttachThingPrincipal(Principal => Str, ThingName => Str)

Each argument is described in detail in: L<Paws::IoT::AttachThingPrincipal>

Returns: a L<Paws::IoT::AttachThingPrincipalResponse> instance

  Attaches the specified principal to the specified thing.


=head2 CancelCertificateTransfer(CertificateId => Str)

Each argument is described in detail in: L<Paws::IoT::CancelCertificateTransfer>

Returns: nothing

  Cancels a pending transfer for the specified certificate.

B<Note> Only the transfer source account can use this operation to
cancel a transfer (transfer destinations can use
RejectCertificateTransfer instead). After transfer, AWS IoT returns the
certificate to the source account in the INACTIVE state. Once the
destination account has accepted the transfer, the transfer may no
longer be cancelled.

After a certificate transfer is cancelled, the status of the
certificate changes from PENDING_TRANSFER to INACTIVE.


=head2 CreateCertificateFromCsr(CertificateSigningRequest => Str, [SetAsActive => Bool])

Each argument is described in detail in: L<Paws::IoT::CreateCertificateFromCsr>

Returns: a L<Paws::IoT::CreateCertificateFromCsrResponse> instance

  Creates an X.509 certificate using the specified certificate signing
request.

B<Note> Reusing the same certificate signing request (CSR) results in a
distinct certificate.


=head2 CreateKeysAndCertificate([SetAsActive => Bool])

Each argument is described in detail in: L<Paws::IoT::CreateKeysAndCertificate>

Returns: a L<Paws::IoT::CreateKeysAndCertificateResponse> instance

  Creates a 2048 bit RSA key pair and issues an X.509 certificate using
the issued public key.

B<Note> This is the only time AWS IoT issues the private key for this
certificate. It is important to keep track of the private key.


=head2 CreatePolicy(PolicyDocument => Str, PolicyName => Str)

Each argument is described in detail in: L<Paws::IoT::CreatePolicy>

Returns: a L<Paws::IoT::CreatePolicyResponse> instance

  Creates an AWS IoT policy.

The created policy is the default version for the policy. This
operation creates a policy version with a version identifier of B<1>
and sets B<1> as the policy's default version.


=head2 CreatePolicyVersion(PolicyDocument => Str, PolicyName => Str, [SetAsDefault => Bool])

Each argument is described in detail in: L<Paws::IoT::CreatePolicyVersion>

Returns: a L<Paws::IoT::CreatePolicyVersionResponse> instance

  Creates a new version of the specified AWS IoT policy.


=head2 CreateThing(ThingName => Str, [AttributePayload => L<Paws::IoT::AttributePayload>])

Each argument is described in detail in: L<Paws::IoT::CreateThing>

Returns: a L<Paws::IoT::CreateThingResponse> instance

  Creates a thing in the thing registry.


=head2 CreateTopicRule(RuleName => Str, TopicRulePayload => L<Paws::IoT::TopicRulePayload>)

Each argument is described in detail in: L<Paws::IoT::CreateTopicRule>

Returns: nothing

  Creates a rule.


=head2 DeleteCertificate(CertificateId => Str)

Each argument is described in detail in: L<Paws::IoT::DeleteCertificate>

Returns: nothing

  Deletes the specified certificate.

A certificate cannot be deleted if it has a policy attached to it. To
delete a certificate, first detach all policies using the
DetachPrincipalPolicy operation.

In addition, a certificate cannot be deleted if it is in ACTIVE status.
To delete a certificate, first change the status to INACTIVE using the
UpdateCertificate operation.


=head2 DeletePolicy(PolicyName => Str)

Each argument is described in detail in: L<Paws::IoT::DeletePolicy>

Returns: nothing

  Deletes the specified policy.

A policy cannot be deleted if:

- it has non-default versions

- it is attached to any certificate

To delete a policy:

- First delete all the non-default versions of the policy using the
DeletePolicyVersion API.

- Detach it from any certificate using the DetachPrincipalPolicy API.

When a policy is deleted, its default version is deleted with it.


=head2 DeletePolicyVersion(PolicyName => Str, PolicyVersionId => Str)

Each argument is described in detail in: L<Paws::IoT::DeletePolicyVersion>

Returns: nothing

  Deletes the specified version of the specified policy. The default
version of the policy cannot be deleted.

To delete the default version use the DeletePolicy API or mark the
policy as non-default and then delete it.


=head2 DeleteThing(ThingName => Str)

Each argument is described in detail in: L<Paws::IoT::DeleteThing>

Returns: a L<Paws::IoT::DeleteThingResponse> instance

  Deletes the specified thing from the Thing Registry.


=head2 DeleteTopicRule(RuleName => Str)

Each argument is described in detail in: L<Paws::IoT::DeleteTopicRule>

Returns: nothing

  Deletes the specified rule.


=head2 DescribeCertificate(CertificateId => Str)

Each argument is described in detail in: L<Paws::IoT::DescribeCertificate>

Returns: a L<Paws::IoT::DescribeCertificateResponse> instance

  Gets information about the specified certificate.


=head2 DescribeEndpoint()

Each argument is described in detail in: L<Paws::IoT::DescribeEndpoint>

Returns: a L<Paws::IoT::DescribeEndpointResponse> instance

  Returns a unique URL specific to the AWS account making the call. The
URL points to the AWS IoT data plane endpoint. The customer-specific
endpoint should be provided to all data plane operations.


=head2 DescribeThing(ThingName => Str)

Each argument is described in detail in: L<Paws::IoT::DescribeThing>

Returns: a L<Paws::IoT::DescribeThingResponse> instance

  Gets information about the specified thing.


=head2 DetachPrincipalPolicy(PolicyName => Str, Principal => Str)

Each argument is described in detail in: L<Paws::IoT::DetachPrincipalPolicy>

Returns: nothing

  Removes the specified policy from the specified certificate.


=head2 DetachThingPrincipal(Principal => Str, ThingName => Str)

Each argument is described in detail in: L<Paws::IoT::DetachThingPrincipal>

Returns: a L<Paws::IoT::DetachThingPrincipalResponse> instance

  Detaches the specified principal from the specified thing.


=head2 GetLoggingOptions()

Each argument is described in detail in: L<Paws::IoT::GetLoggingOptions>

Returns: a L<Paws::IoT::GetLoggingOptionsResponse> instance

  Gets the logging options.


=head2 GetPolicy(PolicyName => Str)

Each argument is described in detail in: L<Paws::IoT::GetPolicy>

Returns: a L<Paws::IoT::GetPolicyResponse> instance

  Gets information about the specified policy with the policy document of
the default version.


=head2 GetPolicyVersion(PolicyName => Str, PolicyVersionId => Str)

Each argument is described in detail in: L<Paws::IoT::GetPolicyVersion>

Returns: a L<Paws::IoT::GetPolicyVersionResponse> instance

  Gets information about the specified policy version.


=head2 GetTopicRule(RuleName => Str)

Each argument is described in detail in: L<Paws::IoT::GetTopicRule>

Returns: a L<Paws::IoT::GetTopicRuleResponse> instance

  Gets information about the specified rule.


=head2 ListCertificates([AscendingOrder => Bool, Marker => Str, PageSize => Int])

Each argument is described in detail in: L<Paws::IoT::ListCertificates>

Returns: a L<Paws::IoT::ListCertificatesResponse> instance

  Lists your certificates.

The results are paginated with a default page size of 25. You can
retrieve additional results using the returned marker.


=head2 ListPolicies([AscendingOrder => Bool, Marker => Str, PageSize => Int])

Each argument is described in detail in: L<Paws::IoT::ListPolicies>

Returns: a L<Paws::IoT::ListPoliciesResponse> instance

  Lists your policies.


=head2 ListPolicyVersions(PolicyName => Str)

Each argument is described in detail in: L<Paws::IoT::ListPolicyVersions>

Returns: a L<Paws::IoT::ListPolicyVersionsResponse> instance

  Lists the versions of the specified policy, and identifies the default
version.


=head2 ListPrincipalPolicies(Principal => Str, [AscendingOrder => Bool, Marker => Str, PageSize => Int])

Each argument is described in detail in: L<Paws::IoT::ListPrincipalPolicies>

Returns: a L<Paws::IoT::ListPrincipalPoliciesResponse> instance

  Lists the policies attached to the specified principal. If you use an
Amazon Cognito identity, the ID needs to be in Amazon Cognito Identity
format.


=head2 ListPrincipalThings(Principal => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::IoT::ListPrincipalThings>

Returns: a L<Paws::IoT::ListPrincipalThingsResponse> instance

  Lists the things associated with the specified principal.


=head2 ListThingPrincipals(ThingName => Str)

Each argument is described in detail in: L<Paws::IoT::ListThingPrincipals>

Returns: a L<Paws::IoT::ListThingPrincipalsResponse> instance

  Lists the principals associated with the specified thing.


=head2 ListThings([AttributeName => Str, AttributeValue => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::IoT::ListThings>

Returns: a L<Paws::IoT::ListThingsResponse> instance

  Lists your things. You can pass an AttributeName and/or AttributeValue
to filter your things. For example: "ListThings where
AttributeName=Color and AttributeValue=Red"


=head2 ListTopicRules([MaxResults => Int, NextToken => Str, RuleDisabled => Bool, Topic => Str])

Each argument is described in detail in: L<Paws::IoT::ListTopicRules>

Returns: a L<Paws::IoT::ListTopicRulesResponse> instance

  Lists the rules for the specific topic.


=head2 RejectCertificateTransfer(CertificateId => Str)

Each argument is described in detail in: L<Paws::IoT::RejectCertificateTransfer>

Returns: nothing

  Rejects a pending certificate transfer. After AWS IoT rejects a
certificate transfer, the certificate status changes from
B<PENDING_TRANFER> to B<INACTIVE>.

To check for pending certificate transfers, call ListCertificates to
enumerate your certificates.

This operation can only be called by the transfer destination. Once
called, the certificate will be returned to the source's account in the
INACTIVE state.


=head2 ReplaceTopicRule(RuleName => Str, TopicRulePayload => L<Paws::IoT::TopicRulePayload>)

Each argument is described in detail in: L<Paws::IoT::ReplaceTopicRule>

Returns: nothing

  Replaces the specified rule. You must specify all parameters for the
new rule.


=head2 SetDefaultPolicyVersion(PolicyName => Str, PolicyVersionId => Str)

Each argument is described in detail in: L<Paws::IoT::SetDefaultPolicyVersion>

Returns: nothing

  Sets the specified policy version as the default for the specified
policy.


=head2 SetLoggingOptions([LoggingOptionsPayload => L<Paws::IoT::LoggingOptionsPayload>])

Each argument is described in detail in: L<Paws::IoT::SetLoggingOptions>

Returns: nothing

  Sets the logging options.


=head2 TransferCertificate(CertificateId => Str, TargetAwsAccount => Str)

Each argument is described in detail in: L<Paws::IoT::TransferCertificate>

Returns: a L<Paws::IoT::TransferCertificateResponse> instance

  Transfers the specified certificate to the specified AWS account.

You can cancel the transfer until it is acknowledged by the recipient.

No notification is sent to the transfer destination's account, it is up
to the caller to notify the transfer target.

The certificate being transferred must not be in the ACTIVE state. It
can be deactivated using the UpdateCertificate API.

The certificate must not have any policies attached to it. These can be
detached using the DetachPrincipalPolicy API.


=head2 UpdateCertificate(CertificateId => Str, NewStatus => Str)

Each argument is described in detail in: L<Paws::IoT::UpdateCertificate>

Returns: nothing

  Updates the status of the specified certificate. This operation is
idempotent.

Moving a cert from the ACTIVE state (including REVOKED) will NOT
disconnect currently-connected devices, although these devices will be
unable to reconnect.

The ACTIVE state is required to authenticate devices connecting to AWS
IoT using a certificate.


=head2 UpdateThing(AttributePayload => L<Paws::IoT::AttributePayload>, ThingName => Str)

Each argument is described in detail in: L<Paws::IoT::UpdateThing>

Returns: a L<Paws::IoT::UpdateThingResponse> instance

  Updates the data for a thing.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

