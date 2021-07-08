package Paws::ACMPCA;
  use Moose;
  sub service { 'acm-pca' }
  sub signing_name { 'acm-pca' }
  sub version { '2017-08-22' }
  sub target_prefix { 'ACMPrivateCA' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateCertificateAuthority {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::CreateCertificateAuthority', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCertificateAuthorityAuditReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::CreateCertificateAuthorityAuditReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::CreatePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCertificateAuthority {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::DeleteCertificateAuthority', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::DeletePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::DeletePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCertificateAuthority {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::DescribeCertificateAuthority', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCertificateAuthorityAuditReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::DescribeCertificateAuthorityAuditReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::GetCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCertificateAuthorityCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::GetCertificateAuthorityCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCertificateAuthorityCsr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::GetCertificateAuthorityCsr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::GetPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportCertificateAuthorityCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::ImportCertificateAuthorityCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub IssueCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::IssueCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCertificateAuthorities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::ListCertificateAuthorities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::ListPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::PutPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreCertificateAuthority {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::RestoreCertificateAuthority', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::RevokeCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagCertificateAuthority {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::TagCertificateAuthority', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagCertificateAuthority {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::UntagCertificateAuthority', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCertificateAuthority {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::UpdateCertificateAuthority', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCertificateAuthorities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCertificateAuthorities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCertificateAuthorities(@_, NextToken => $next_result->NextToken);
        push @{ $result->CertificateAuthorities }, @{ $next_result->CertificateAuthorities };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CertificateAuthorities') foreach (@{ $result->CertificateAuthorities });
        $result = $self->ListCertificateAuthorities(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CertificateAuthorities') foreach (@{ $result->CertificateAuthorities });
    }

    return undef
  }
  sub ListAllPermissions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPermissions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPermissions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Permissions }, @{ $next_result->Permissions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Permissions') foreach (@{ $result->Permissions });
        $result = $self->ListPermissions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Permissions') foreach (@{ $result->Permissions });
    }

    return undef
  }
  sub ListAllTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTags(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTags(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }


  sub operations { qw/CreateCertificateAuthority CreateCertificateAuthorityAuditReport CreatePermission DeleteCertificateAuthority DeletePermission DeletePolicy DescribeCertificateAuthority DescribeCertificateAuthorityAuditReport GetCertificate GetCertificateAuthorityCertificate GetCertificateAuthorityCsr GetPolicy ImportCertificateAuthorityCertificate IssueCertificate ListCertificateAuthorities ListPermissions ListTags PutPolicy RestoreCertificateAuthority RevokeCertificate TagCertificateAuthority UntagCertificateAuthority UpdateCertificateAuthority / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA - Perl Interface to AWS AWS Certificate Manager Private Certificate Authority

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ACMPCA');
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

This is the I<ACM Private CA API Reference>. It provides descriptions,
syntax, and usage examples for each of the actions and data types
involved in creating and managing private certificate authorities (CA)
for your organization.

The documentation for each action shows the Query API request
parameters and the XML response. Alternatively, you can use one of the
AWS SDKs to access an API that's tailored to the programming language
or platform that you're using. For more information, see AWS SDKs
(https://aws.amazon.com/tools/#SDKs).

Each ACM Private CA API action has a quota that determines the number
of times the action can be called per second. For more information, see
API Rate Quotas in ACM Private CA
(https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaLimits.html#PcaLimits-api)
in the ACM Private CA user guide.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22>


=head1 METHODS

=head2 CreateCertificateAuthority

=over

=item CertificateAuthorityConfiguration => L<Paws::ACMPCA::CertificateAuthorityConfiguration>

=item CertificateAuthorityType => Str

=item [IdempotencyToken => Str]

=item [KeyStorageSecurityStandard => Str]

=item [RevocationConfiguration => L<Paws::ACMPCA::RevocationConfiguration>]

=item [Tags => ArrayRef[L<Paws::ACMPCA::Tag>]]


=back

Each argument is described in detail in: L<Paws::ACMPCA::CreateCertificateAuthority>

Returns: a L<Paws::ACMPCA::CreateCertificateAuthorityResponse> instance

Creates a root or subordinate private certificate authority (CA). You
must specify the CA configuration, the certificate revocation list
(CRL) configuration, the CA type, and an optional idempotency token to
avoid accidental creation of multiple CAs. The CA configuration
specifies the name of the algorithm and key size to be used to create
the CA private key, the type of signing algorithm that the CA uses, and
X.500 subject information. The CRL configuration specifies the CRL
expiration period in days (the validity period of the CRL), the Amazon
S3 bucket that will contain the CRL, and a CNAME alias for the S3
bucket that is included in certificates issued by the CA. If
successful, this action returns the Amazon Resource Name (ARN) of the
CA.

ACM Private CA assets that are stored in Amazon S3 can be protected
with encryption. For more information, see Encrypting Your CRLs
(https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#crl-encryption).

Both PCA and the IAM principal must have permission to write to the S3
bucket that you specify. If the IAM principal making the call does not
have permission to write to the bucket, then an exception is thrown.
For more information, see Configure Access to ACM Private CA
(https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaAuthAccess.html).


=head2 CreateCertificateAuthorityAuditReport

=over

=item AuditReportResponseFormat => Str

=item CertificateAuthorityArn => Str

=item S3BucketName => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::CreateCertificateAuthorityAuditReport>

Returns: a L<Paws::ACMPCA::CreateCertificateAuthorityAuditReportResponse> instance

Creates an audit report that lists every time that your CA private key
is used. The report is saved in the Amazon S3 bucket that you specify
on input. The IssueCertificate
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_IssueCertificate.html)
and RevokeCertificate
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RevokeCertificate.html)
actions use the private key.

Both PCA and the IAM principal must have permission to write to the S3
bucket that you specify. If the IAM principal making the call does not
have permission to write to the bucket, then an exception is thrown.
For more information, see Configure Access to ACM Private CA
(https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaAuthAccess.html).

ACM Private CA assets that are stored in Amazon S3 can be protected
with encryption. For more information, see Encrypting Your Audit
Reports
(https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaAuditReport.html#audit-report-encryption).


=head2 CreatePermission

=over

=item Actions => ArrayRef[Str|Undef]

=item CertificateAuthorityArn => Str

=item Principal => Str

=item [SourceAccount => Str]


=back

Each argument is described in detail in: L<Paws::ACMPCA::CreatePermission>

Returns: nothing

Grants one or more permissions on a private CA to the AWS Certificate
Manager (ACM) service principal (C<acm.amazonaws.com>). These
permissions allow ACM to issue and renew ACM certificates that reside
in the same AWS account as the CA.

You can list current permissions with the ListPermissions
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListPermissions.html)
action and revoke them with the DeletePermission
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePermission.html)
action.

B<About Permissions>

=over

=item *

If the private CA and the certificates it issues reside in the same
account, you can use C<CreatePermission> to grant permissions for ACM
to carry out automatic certificate renewals.

=item *

For automatic certificate renewal to succeed, the ACM service principal
needs permissions to create, retrieve, and list certificates.

=item *

If the private CA and the ACM certificates reside in different
accounts, then permissions cannot be used to enable automatic renewals.
Instead, the ACM certificate owner must set up a resource-based policy
to enable cross-account issuance and renewals. For more information,
see Using a Resource Based Policy with ACM Private CA
(https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-rbp.html).

=back



=head2 DeleteCertificateAuthority

=over

=item CertificateAuthorityArn => Str

=item [PermanentDeletionTimeInDays => Int]


=back

Each argument is described in detail in: L<Paws::ACMPCA::DeleteCertificateAuthority>

Returns: nothing

Deletes a private certificate authority (CA). You must provide the
Amazon Resource Name (ARN) of the private CA that you want to delete.
You can find the ARN by calling the ListCertificateAuthorities
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html)
action.

Deleting a CA will invalidate other CAs and certificates below it in
your CA hierarchy.

Before you can delete a CA that you have created and activated, you
must disable it. To do this, call the UpdateCertificateAuthority
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html)
action and set the B<CertificateAuthorityStatus> parameter to
C<DISABLED>.

Additionally, you can delete a CA if you are waiting for it to be
created (that is, the status of the CA is C<CREATING>). You can also
delete it if the CA has been created but you haven't yet imported the
signed certificate into ACM Private CA (that is, the status of the CA
is C<PENDING_CERTIFICATE>).

When you successfully call DeleteCertificateAuthority
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeleteCertificateAuthority.html),
the CA's status changes to C<DELETED>. However, the CA won't be
permanently deleted until the restoration period has passed. By
default, if you do not set the C<PermanentDeletionTimeInDays>
parameter, the CA remains restorable for 30 days. You can set the
parameter from 7 to 30 days. The DescribeCertificateAuthority
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DescribeCertificateAuthority.html)
action returns the time remaining in the restoration window of a
private CA in the C<DELETED> state. To restore an eligible CA, call the
RestoreCertificateAuthority
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RestoreCertificateAuthority.html)
action.


=head2 DeletePermission

=over

=item CertificateAuthorityArn => Str

=item Principal => Str

=item [SourceAccount => Str]


=back

Each argument is described in detail in: L<Paws::ACMPCA::DeletePermission>

Returns: nothing

Revokes permissions on a private CA granted to the AWS Certificate
Manager (ACM) service principal (acm.amazonaws.com).

These permissions allow ACM to issue and renew ACM certificates that
reside in the same AWS account as the CA. If you revoke these
permissions, ACM will no longer renew the affected certificates
automatically.

Permissions can be granted with the CreatePermission
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreatePermission.html)
action and listed with the ListPermissions
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListPermissions.html)
action.

B<About Permissions>

=over

=item *

If the private CA and the certificates it issues reside in the same
account, you can use C<CreatePermission> to grant permissions for ACM
to carry out automatic certificate renewals.

=item *

For automatic certificate renewal to succeed, the ACM service principal
needs permissions to create, retrieve, and list certificates.

=item *

If the private CA and the ACM certificates reside in different
accounts, then permissions cannot be used to enable automatic renewals.
Instead, the ACM certificate owner must set up a resource-based policy
to enable cross-account issuance and renewals. For more information,
see Using a Resource Based Policy with ACM Private CA
(https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-rbp.html).

=back



=head2 DeletePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::DeletePolicy>

Returns: nothing

Deletes the resource-based policy attached to a private CA. Deletion
will remove any access that the policy has granted. If there is no
policy attached to the private CA, this action will return successful.

If you delete a policy that was applied through AWS Resource Access
Manager (RAM), the CA will be removed from all shares in which it was
included.

The AWS Certificate Manager Service Linked Role that the policy
supports is not affected when you delete the policy.

The current policy can be shown with GetPolicy
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetPolicy.html)
and updated with PutPolicy
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_PutPolicy.html).

B<About Policies>

=over

=item *

A policy grants access on a private CA to an AWS customer account, to
AWS Organizations, or to an AWS Organizations unit. Policies are under
the control of a CA administrator. For more information, see Using a
Resource Based Policy with ACM Private CA
(https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-rbp.html).

=item *

A policy permits a user of AWS Certificate Manager (ACM) to issue ACM
certificates signed by a CA in another account.

=item *

For ACM to manage automatic renewal of these certificates, the ACM user
must configure a Service Linked Role (SLR). The SLR allows the ACM
service to assume the identity of the user, subject to confirmation
against the ACM Private CA policy. For more information, see Using a
Service Linked Role with ACM
(https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html).

=item *

Updates made in AWS Resource Manager (RAM) are reflected in policies.
For more information, see Attach a Policy for Cross-Account Access
(https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-ram.html).

=back



=head2 DescribeCertificateAuthority

=over

=item CertificateAuthorityArn => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::DescribeCertificateAuthority>

Returns: a L<Paws::ACMPCA::DescribeCertificateAuthorityResponse> instance

Lists information about your private certificate authority (CA) or one
that has been shared with you. You specify the private CA on input by
its ARN (Amazon Resource Name). The output contains the status of your
CA. This can be any of the following:

=over

=item *

C<CREATING> - ACM Private CA is creating your private certificate
authority.

=item *

C<PENDING_CERTIFICATE> - The certificate is pending. You must use your
ACM Private CA-hosted or on-premises root or subordinate CA to sign
your private CA CSR and then import it into PCA.

=item *

C<ACTIVE> - Your private CA is active.

=item *

C<DISABLED> - Your private CA has been disabled.

=item *

C<EXPIRED> - Your private CA certificate has expired.

=item *

C<FAILED> - Your private CA has failed. Your CA can fail because of
problems such a network outage or back-end AWS failure or other errors.
A failed CA can never return to the pending state. You must create a
new CA.

=item *

C<DELETED> - Your private CA is within the restoration period, after
which it is permanently deleted. The length of time remaining in the
CA's restoration period is also included in this action's output.

=back



=head2 DescribeCertificateAuthorityAuditReport

=over

=item AuditReportId => Str

=item CertificateAuthorityArn => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::DescribeCertificateAuthorityAuditReport>

Returns: a L<Paws::ACMPCA::DescribeCertificateAuthorityAuditReportResponse> instance

Lists information about a specific audit report created by calling the
CreateCertificateAuthorityAuditReport
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html)
action. Audit information is created every time the certificate
authority (CA) private key is used. The private key is used when you
call the IssueCertificate
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_IssueCertificate.html)
action or the RevokeCertificate
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RevokeCertificate.html)
action.


=head2 GetCertificate

=over

=item CertificateArn => Str

=item CertificateAuthorityArn => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::GetCertificate>

Returns: a L<Paws::ACMPCA::GetCertificateResponse> instance

Retrieves a certificate from your private CA or one that has been
shared with you. The ARN of the certificate is returned when you call
the IssueCertificate
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_IssueCertificate.html)
action. You must specify both the ARN of your private CA and the ARN of
the issued certificate when calling the B<GetCertificate> action. You
can retrieve the certificate if it is in the B<ISSUED> state. You can
call the CreateCertificateAuthorityAuditReport
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html)
action to create a report that contains information about all of the
certificates issued and revoked by your private CA.


=head2 GetCertificateAuthorityCertificate

=over

=item CertificateAuthorityArn => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::GetCertificateAuthorityCertificate>

Returns: a L<Paws::ACMPCA::GetCertificateAuthorityCertificateResponse> instance

Retrieves the certificate and certificate chain for your private
certificate authority (CA) or one that has been shared with you. Both
the certificate and the chain are base64 PEM-encoded. The chain does
not include the CA certificate. Each certificate in the chain signs the
one before it.


=head2 GetCertificateAuthorityCsr

=over

=item CertificateAuthorityArn => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::GetCertificateAuthorityCsr>

Returns: a L<Paws::ACMPCA::GetCertificateAuthorityCsrResponse> instance

Retrieves the certificate signing request (CSR) for your private
certificate authority (CA). The CSR is created when you call the
CreateCertificateAuthority
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html)
action. Sign the CSR with your ACM Private CA-hosted or on-premises
root or subordinate CA. Then import the signed certificate back into
ACM Private CA by calling the ImportCertificateAuthorityCertificate
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html)
action. The CSR is returned as a base64 PEM-encoded string.


=head2 GetPolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::GetPolicy>

Returns: a L<Paws::ACMPCA::GetPolicyResponse> instance

Retrieves the resource-based policy attached to a private CA. If either
the private CA resource or the policy cannot be found, this action
returns a C<ResourceNotFoundException>.

The policy can be attached or updated with PutPolicy
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_PutPolicy.html)
and removed with DeletePolicy
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePolicy.html).

B<About Policies>

=over

=item *

A policy grants access on a private CA to an AWS customer account, to
AWS Organizations, or to an AWS Organizations unit. Policies are under
the control of a CA administrator. For more information, see Using a
Resource Based Policy with ACM Private CA
(https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-rbp.html).

=item *

A policy permits a user of AWS Certificate Manager (ACM) to issue ACM
certificates signed by a CA in another account.

=item *

For ACM to manage automatic renewal of these certificates, the ACM user
must configure a Service Linked Role (SLR). The SLR allows the ACM
service to assume the identity of the user, subject to confirmation
against the ACM Private CA policy. For more information, see Using a
Service Linked Role with ACM
(https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html).

=item *

Updates made in AWS Resource Manager (RAM) are reflected in policies.
For more information, see Attach a Policy for Cross-Account Access
(https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-ram.html).

=back



=head2 ImportCertificateAuthorityCertificate

=over

=item Certificate => Str

=item CertificateAuthorityArn => Str

=item [CertificateChain => Str]


=back

Each argument is described in detail in: L<Paws::ACMPCA::ImportCertificateAuthorityCertificate>

Returns: nothing

Imports a signed private CA certificate into ACM Private CA. This
action is used when you are using a chain of trust whose root is
located outside ACM Private CA. Before you can call this action, the
following preparations must in place:

=over

=item 1.

In ACM Private CA, call the CreateCertificateAuthority
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html)
action to create the private CA that you plan to back with the imported
certificate.

=item 2.

Call the GetCertificateAuthorityCsr
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetCertificateAuthorityCsr.html)
action to generate a certificate signing request (CSR).

=item 3.

Sign the CSR using a root or intermediate CA hosted by either an
on-premises PKI hierarchy or by a commercial CA.

=item 4.

Create a certificate chain and copy the signed certificate and the
certificate chain to your working directory.

=back

ACM Private CA supports three scenarios for installing a CA
certificate:

=over

=item *

Installing a certificate for a root CA hosted by ACM Private CA.

=item *

Installing a subordinate CA certificate whose parent authority is
hosted by ACM Private CA.

=item *

Installing a subordinate CA certificate whose parent authority is
externally hosted.

=back

The following additional requirements apply when you import a CA
certificate.

=over

=item *

Only a self-signed certificate can be imported as a root CA.

=item *

A self-signed certificate cannot be imported as a subordinate CA.

=item *

Your certificate chain must not include the private CA certificate that
you are importing.

=item *

Your root CA must be the last certificate in your chain. The
subordinate certificate, if any, that your root CA signed must be next
to last. The subordinate certificate signed by the preceding
subordinate CA must come next, and so on until your chain is built.

=item *

The chain must be PEM-encoded.

=item *

The maximum allowed size of a certificate is 32 KB.

=item *

The maximum allowed size of a certificate chain is 2 MB.

=back

I<Enforcement of Critical Constraints>

ACM Private CA allows the following extensions to be marked critical in
the imported CA certificate or chain.

=over

=item *

Basic constraints (I<must> be marked critical)

=item *

Subject alternative names

=item *

Key usage

=item *

Extended key usage

=item *

Authority key identifier

=item *

Subject key identifier

=item *

Issuer alternative name

=item *

Subject directory attributes

=item *

Subject information access

=item *

Certificate policies

=item *

Policy mappings

=item *

Inhibit anyPolicy

=back

ACM Private CA rejects the following extensions when they are marked
critical in an imported CA certificate or chain.

=over

=item *

Name constraints

=item *

Policy constraints

=item *

CRL distribution points

=item *

Authority information access

=item *

Freshest CRL

=item *

Any other extension

=back



=head2 IssueCertificate

=over

=item CertificateAuthorityArn => Str

=item Csr => Str

=item SigningAlgorithm => Str

=item Validity => L<Paws::ACMPCA::Validity>

=item [ApiPassthrough => L<Paws::ACMPCA::ApiPassthrough>]

=item [IdempotencyToken => Str]

=item [TemplateArn => Str]

=item [ValidityNotBefore => L<Paws::ACMPCA::Validity>]


=back

Each argument is described in detail in: L<Paws::ACMPCA::IssueCertificate>

Returns: a L<Paws::ACMPCA::IssueCertificateResponse> instance

Uses your private certificate authority (CA), or one that has been
shared with you, to issue a client certificate. This action returns the
Amazon Resource Name (ARN) of the certificate. You can retrieve the
certificate by calling the GetCertificate
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetCertificate.html)
action and specifying the ARN.

You cannot use the ACM B<ListCertificateAuthorities> action to retrieve
the ARNs of the certificates that you issue by using ACM Private CA.


=head2 ListCertificateAuthorities

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceOwner => Str]


=back

Each argument is described in detail in: L<Paws::ACMPCA::ListCertificateAuthorities>

Returns: a L<Paws::ACMPCA::ListCertificateAuthoritiesResponse> instance

Lists the private certificate authorities that you created by using the
CreateCertificateAuthority
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html)
action.


=head2 ListPermissions

=over

=item CertificateAuthorityArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ACMPCA::ListPermissions>

Returns: a L<Paws::ACMPCA::ListPermissionsResponse> instance

List all permissions on a private CA, if any, granted to the AWS
Certificate Manager (ACM) service principal (acm.amazonaws.com).

These permissions allow ACM to issue and renew ACM certificates that
reside in the same AWS account as the CA.

Permissions can be granted with the CreatePermission
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreatePermission.html)
action and revoked with the DeletePermission
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePermission.html)
action.

B<About Permissions>

=over

=item *

If the private CA and the certificates it issues reside in the same
account, you can use C<CreatePermission> to grant permissions for ACM
to carry out automatic certificate renewals.

=item *

For automatic certificate renewal to succeed, the ACM service principal
needs permissions to create, retrieve, and list certificates.

=item *

If the private CA and the ACM certificates reside in different
accounts, then permissions cannot be used to enable automatic renewals.
Instead, the ACM certificate owner must set up a resource-based policy
to enable cross-account issuance and renewals. For more information,
see Using a Resource Based Policy with ACM Private CA
(https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-rbp.html).

=back



=head2 ListTags

=over

=item CertificateAuthorityArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ACMPCA::ListTags>

Returns: a L<Paws::ACMPCA::ListTagsResponse> instance

Lists the tags, if any, that are associated with your private CA or one
that has been shared with you. Tags are labels that you can use to
identify and organize your CAs. Each tag consists of a key and an
optional value. Call the TagCertificateAuthority
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_TagCertificateAuthority.html)
action to add one or more tags to your CA. Call the
UntagCertificateAuthority
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UntagCertificateAuthority.html)
action to remove tags.


=head2 PutPolicy

=over

=item Policy => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::PutPolicy>

Returns: nothing

Attaches a resource-based policy to a private CA.

A policy can also be applied by sharing a private CA through AWS
Resource Access Manager (RAM). For more information, see Attach a
Policy for Cross-Account Access
(https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-ram.html).

The policy can be displayed with GetPolicy
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetPolicy.html)
and removed with DeletePolicy
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePolicy.html).

B<About Policies>

=over

=item *

A policy grants access on a private CA to an AWS customer account, to
AWS Organizations, or to an AWS Organizations unit. Policies are under
the control of a CA administrator. For more information, see Using a
Resource Based Policy with ACM Private CA
(https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-rbp.html).

=item *

A policy permits a user of AWS Certificate Manager (ACM) to issue ACM
certificates signed by a CA in another account.

=item *

For ACM to manage automatic renewal of these certificates, the ACM user
must configure a Service Linked Role (SLR). The SLR allows the ACM
service to assume the identity of the user, subject to confirmation
against the ACM Private CA policy. For more information, see Using a
Service Linked Role with ACM
(https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html).

=item *

Updates made in AWS Resource Manager (RAM) are reflected in policies.
For more information, see Attach a Policy for Cross-Account Access
(https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-ram.html).

=back



=head2 RestoreCertificateAuthority

=over

=item CertificateAuthorityArn => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::RestoreCertificateAuthority>

Returns: nothing

Restores a certificate authority (CA) that is in the C<DELETED> state.
You can restore a CA during the period that you defined in the
B<PermanentDeletionTimeInDays> parameter of the
DeleteCertificateAuthority
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeleteCertificateAuthority.html)
action. Currently, you can specify 7 to 30 days. If you did not specify
a B<PermanentDeletionTimeInDays> value, by default you can restore the
CA at any time in a 30 day period. You can check the time remaining in
the restoration period of a private CA in the C<DELETED> state by
calling the DescribeCertificateAuthority
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DescribeCertificateAuthority.html)
or ListCertificateAuthorities
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html)
actions. The status of a restored CA is set to its pre-deletion status
when the B<RestoreCertificateAuthority> action returns. To change its
status to C<ACTIVE>, call the UpdateCertificateAuthority
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html)
action. If the private CA was in the C<PENDING_CERTIFICATE> state at
deletion, you must use the ImportCertificateAuthorityCertificate
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html)
action to import a certificate authority into the private CA before it
can be activated. You cannot restore a CA after the restoration period
has ended.


=head2 RevokeCertificate

=over

=item CertificateAuthorityArn => Str

=item CertificateSerial => Str

=item RevocationReason => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::RevokeCertificate>

Returns: nothing

Revokes a certificate that was issued inside ACM Private CA. If you
enable a certificate revocation list (CRL) when you create or update
your private CA, information about the revoked certificates will be
included in the CRL. ACM Private CA writes the CRL to an S3 bucket that
you specify. A CRL is typically updated approximately 30 minutes after
a certificate is revoked. If for any reason the CRL update fails, ACM
Private CA attempts makes further attempts every 15 minutes. With
Amazon CloudWatch, you can create alarms for the metrics
C<CRLGenerated> and C<MisconfiguredCRLBucket>. For more information,
see Supported CloudWatch Metrics
(https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCloudWatch.html).

Both PCA and the IAM principal must have permission to write to the S3
bucket that you specify. If the IAM principal making the call does not
have permission to write to the bucket, then an exception is thrown.
For more information, see Configure Access to ACM Private CA
(https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaAuthAccess.html).

ACM Private CA also writes revocation information to the audit report.
For more information, see CreateCertificateAuthorityAuditReport
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html).

You cannot revoke a root CA self-signed certificate.


=head2 TagCertificateAuthority

=over

=item CertificateAuthorityArn => Str

=item Tags => ArrayRef[L<Paws::ACMPCA::Tag>]


=back

Each argument is described in detail in: L<Paws::ACMPCA::TagCertificateAuthority>

Returns: nothing

Adds one or more tags to your private CA. Tags are labels that you can
use to identify and organize your AWS resources. Each tag consists of a
key and an optional value. You specify the private CA on input by its
Amazon Resource Name (ARN). You specify the tag by using a key-value
pair. You can apply a tag to just one private CA if you want to
identify a specific characteristic of that CA, or you can apply the
same tag to multiple private CAs if you want to filter for a common
relationship among those CAs. To remove one or more tags, use the
UntagCertificateAuthority
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UntagCertificateAuthority.html)
action. Call the ListTags
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListTags.html)
action to see what tags are associated with your CA.


=head2 UntagCertificateAuthority

=over

=item CertificateAuthorityArn => Str

=item Tags => ArrayRef[L<Paws::ACMPCA::Tag>]


=back

Each argument is described in detail in: L<Paws::ACMPCA::UntagCertificateAuthority>

Returns: nothing

Remove one or more tags from your private CA. A tag consists of a
key-value pair. If you do not specify the value portion of the tag when
calling this action, the tag will be removed regardless of value. If
you specify a value, the tag is removed only if it is associated with
the specified value. To add tags to a private CA, use the
TagCertificateAuthority
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_TagCertificateAuthority.html).
Call the ListTags
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListTags.html)
action to see what tags are associated with your CA.


=head2 UpdateCertificateAuthority

=over

=item CertificateAuthorityArn => Str

=item [RevocationConfiguration => L<Paws::ACMPCA::RevocationConfiguration>]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ACMPCA::UpdateCertificateAuthority>

Returns: nothing

Updates the status or configuration of a private certificate authority
(CA). Your private CA must be in the C<ACTIVE> or C<DISABLED> state
before you can update it. You can disable a private CA that is in the
C<ACTIVE> state or make a CA that is in the C<DISABLED> state active
again.

Both PCA and the IAM principal must have permission to write to the S3
bucket that you specify. If the IAM principal making the call does not
have permission to write to the bucket, then an exception is thrown.
For more information, see Configure Access to ACM Private CA
(https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaAuthAccess.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCertificateAuthorities(sub { },[MaxResults => Int, NextToken => Str, ResourceOwner => Str])

=head2 ListAllCertificateAuthorities([MaxResults => Int, NextToken => Str, ResourceOwner => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CertificateAuthorities, passing the object as the first parameter, and the string 'CertificateAuthorities' as the second parameter 

If not, it will return a a L<Paws::ACMPCA::ListCertificateAuthoritiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPermissions(sub { },CertificateAuthorityArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPermissions(CertificateAuthorityArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Permissions, passing the object as the first parameter, and the string 'Permissions' as the second parameter 

If not, it will return a a L<Paws::ACMPCA::ListPermissionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTags(sub { },CertificateAuthorityArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTags(CertificateAuthorityArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::ACMPCA::ListTagsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

