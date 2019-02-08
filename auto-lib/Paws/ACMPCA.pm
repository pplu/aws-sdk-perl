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
  sub DeleteCertificateAuthority {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::DeleteCertificateAuthority', @_);
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
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACMPCA::ListTags', @_);
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


  sub operations { qw/CreateCertificateAuthority CreateCertificateAuthorityAuditReport DeleteCertificateAuthority DescribeCertificateAuthority DescribeCertificateAuthorityAuditReport GetCertificate GetCertificateAuthorityCertificate GetCertificateAuthorityCsr ImportCertificateAuthorityCertificate IssueCertificate ListCertificateAuthorities ListTags RestoreCertificateAuthority RevokeCertificate TagCertificateAuthority UntagCertificateAuthority UpdateCertificateAuthority / }

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

You can use the ACM PCA API to create a private certificate authority
(CA). You must first call the CreateCertificateAuthority operation. If
successful, the operation returns an Amazon Resource Name (ARN) for
your private CA. Use this ARN as input to the
GetCertificateAuthorityCsr operation to retrieve the certificate
signing request (CSR) for your private CA certificate. Sign the CSR
using the root or an intermediate CA in your on-premises PKI hierarchy,
and call the ImportCertificateAuthorityCertificate to import your
signed private CA certificate into ACM PCA.

Use your private CA to issue and revoke certificates. These are private
certificates that identify and secure client computers, servers,
applications, services, devices, and users over SSLS/TLS connections
within your organization. Call the IssueCertificate operation to issue
a certificate. Call the RevokeCertificate operation to revoke a
certificate.

Certificates issued by your private CA can be trusted only within your
organization, not publicly.

Your private CA can optionally create a certificate revocation list
(CRL) to track the certificates you revoke. To create a CRL, you must
specify a RevocationConfiguration object when you call the
CreateCertificateAuthority operation. ACM PCA writes the CRL to an S3
bucket that you specify. You must specify a bucket policy that grants
ACM PCA write permission.

You can also call the CreateCertificateAuthorityAuditReport to create
an optional audit report, which enumerates all of the issued, valid,
expired, and revoked certificates from the CA.

Each ACM PCA API operation has a throttling limit which determines the
number of times the operation can be called per second. For more
information, see API Rate Limits in ACM PCA in the ACM PCA user guide.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22>


=head1 METHODS

=head2 CreateCertificateAuthority

=over

=item CertificateAuthorityConfiguration => L<Paws::ACMPCA::CertificateAuthorityConfiguration>

=item CertificateAuthorityType => Str

=item [IdempotencyToken => Str]

=item [RevocationConfiguration => L<Paws::ACMPCA::RevocationConfiguration>]

=item [Tags => ArrayRef[L<Paws::ACMPCA::Tag>]]


=back

Each argument is described in detail in: L<Paws::ACMPCA::CreateCertificateAuthority>

Returns: a L<Paws::ACMPCA::CreateCertificateAuthorityResponse> instance

Creates a private subordinate certificate authority (CA). You must
specify the CA configuration, the revocation configuration, the CA
type, and an optional idempotency token. The CA configuration specifies
the name of the algorithm and key size to be used to create the CA
private key, the type of signing algorithm that the CA uses to sign,
and X.500 subject information. The CRL (certificate revocation list)
configuration specifies the CRL expiration period in days (the validity
period of the CRL), the Amazon S3 bucket that will contain the CRL, and
a CNAME alias for the S3 bucket that is included in certificates issued
by the CA. If successful, this operation returns the Amazon Resource
Name (ARN) of the CA.


=head2 CreateCertificateAuthorityAuditReport

=over

=item AuditReportResponseFormat => Str

=item CertificateAuthorityArn => Str

=item S3BucketName => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::CreateCertificateAuthorityAuditReport>

Returns: a L<Paws::ACMPCA::CreateCertificateAuthorityAuditReportResponse> instance

Creates an audit report that lists every time that the your CA private
key is used. The report is saved in the Amazon S3 bucket that you
specify on input. The IssueCertificate and RevokeCertificate operations
use the private key. You can generate a new report every 30 minutes.


=head2 DeleteCertificateAuthority

=over

=item CertificateAuthorityArn => Str

=item [PermanentDeletionTimeInDays => Int]


=back

Each argument is described in detail in: L<Paws::ACMPCA::DeleteCertificateAuthority>

Returns: nothing

Deletes a private certificate authority (CA). You must provide the ARN
(Amazon Resource Name) of the private CA that you want to delete. You
can find the ARN by calling the ListCertificateAuthorities operation.
Before you can delete a CA, you must disable it. Call the
UpdateCertificateAuthority operation and set the
B<CertificateAuthorityStatus> parameter to C<DISABLED>.

Additionally, you can delete a CA if you are waiting for it to be
created (the B<Status> field of the CertificateAuthority is
C<CREATING>). You can also delete it if the CA has been created but you
haven't yet imported the signed certificate (the B<Status> is
C<PENDING_CERTIFICATE>) into ACM PCA.

If the CA is in one of the aforementioned states and you call
DeleteCertificateAuthority, the CA's status changes to C<DELETED>.
However, the CA won't be permentantly deleted until the restoration
period has passed. By default, if you do not set the
C<PermanentDeletionTimeInDays> parameter, the CA remains restorable for
30 days. You can set the parameter from 7 to 30 days. The
DescribeCertificateAuthority operation returns the time remaining in
the restoration window of a Private CA in the C<DELETED> state. To
restore an eligable CA, call the RestoreCertificateAuthority operation.


=head2 DescribeCertificateAuthority

=over

=item CertificateAuthorityArn => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::DescribeCertificateAuthority>

Returns: a L<Paws::ACMPCA::DescribeCertificateAuthorityResponse> instance

Lists information about your private certificate authority (CA). You
specify the private CA on input by its ARN (Amazon Resource Name). The
output contains the status of your CA. This can be any of the
following:

=over

=item *

C<CREATING> - ACM PCA is creating your private certificate authority.

=item *

C<PENDING_CERTIFICATE> - The certificate is pending. You must use your
on-premises root or subordinate CA to sign your private CA CSR and then
import it into PCA.

=item *

C<ACTIVE> - Your private CA is active.

=item *

C<DISABLED> - Your private CA has been disabled.

=item *

C<EXPIRED> - Your private CA certificate has expired.

=item *

C<FAILED> - Your private CA has failed. Your CA can fail because of
problems such a network outage or backend AWS failure or other errors.
A failed CA can never return to the pending state. You must create a
new CA.

=item *

C<DELETED> - Your private CA is within the restoration period, after
which it is permanently deleted. The length of time remaining in the
CA's restoration period is also included in this operation's output.

=back



=head2 DescribeCertificateAuthorityAuditReport

=over

=item AuditReportId => Str

=item CertificateAuthorityArn => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::DescribeCertificateAuthorityAuditReport>

Returns: a L<Paws::ACMPCA::DescribeCertificateAuthorityAuditReportResponse> instance

Lists information about a specific audit report created by calling the
CreateCertificateAuthorityAuditReport operation. Audit information is
created every time the certificate authority (CA) private key is used.
The private key is used when you call the IssueCertificate operation or
the RevokeCertificate operation.


=head2 GetCertificate

=over

=item CertificateArn => Str

=item CertificateAuthorityArn => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::GetCertificate>

Returns: a L<Paws::ACMPCA::GetCertificateResponse> instance

Retrieves a certificate from your private CA. The ARN of the
certificate is returned when you call the IssueCertificate operation.
You must specify both the ARN of your private CA and the ARN of the
issued certificate when calling the B<GetCertificate> operation. You
can retrieve the certificate if it is in the B<ISSUED> state. You can
call the CreateCertificateAuthorityAuditReport operation to create a
report that contains information about all of the certificates issued
and revoked by your private CA.


=head2 GetCertificateAuthorityCertificate

=over

=item CertificateAuthorityArn => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::GetCertificateAuthorityCertificate>

Returns: a L<Paws::ACMPCA::GetCertificateAuthorityCertificateResponse> instance

Retrieves the certificate and certificate chain for your private
certificate authority (CA). Both the certificate and the chain are
base64 PEM-encoded. The chain does not include the CA certificate. Each
certificate in the chain signs the one before it.


=head2 GetCertificateAuthorityCsr

=over

=item CertificateAuthorityArn => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::GetCertificateAuthorityCsr>

Returns: a L<Paws::ACMPCA::GetCertificateAuthorityCsrResponse> instance

Retrieves the certificate signing request (CSR) for your private
certificate authority (CA). The CSR is created when you call the
CreateCertificateAuthority operation. Take the CSR to your on-premises
X.509 infrastructure and sign it by using your root or a subordinate
CA. Then import the signed certificate back into ACM PCA by calling the
ImportCertificateAuthorityCertificate operation. The CSR is returned as
a base64 PEM-encoded string.


=head2 ImportCertificateAuthorityCertificate

=over

=item Certificate => Str

=item CertificateAuthorityArn => Str

=item CertificateChain => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::ImportCertificateAuthorityCertificate>

Returns: nothing

Imports your signed private CA certificate into ACM PCA. Before you can
call this operation, you must create the private certificate authority
by calling the CreateCertificateAuthority operation. You must then
generate a certificate signing request (CSR) by calling the
GetCertificateAuthorityCsr operation. Take the CSR to your on-premises
CA and use the root certificate or a subordinate certificate to sign
it. Create a certificate chain and copy the signed certificate and the
certificate chain to your working directory.

Your certificate chain must not include the private CA certificate that
you are importing.

Your on-premises CA certificate must be the last certificate in your
chain. The subordinate certificate, if any, that your root CA signed
must be next to last. The subordinate certificate signed by the
preceding subordinate CA must come next, and so on until your chain is
built.

The chain must be PEM-encoded.


=head2 IssueCertificate

=over

=item CertificateAuthorityArn => Str

=item Csr => Str

=item SigningAlgorithm => Str

=item Validity => L<Paws::ACMPCA::Validity>

=item [IdempotencyToken => Str]


=back

Each argument is described in detail in: L<Paws::ACMPCA::IssueCertificate>

Returns: a L<Paws::ACMPCA::IssueCertificateResponse> instance

Uses your private certificate authority (CA) to issue a client
certificate. This operation returns the Amazon Resource Name (ARN) of
the certificate. You can retrieve the certificate by calling the
GetCertificate operation and specifying the ARN.

You cannot use the ACM B<ListCertificateAuthorities> operation to
retrieve the ARNs of the certificates that you issue by using ACM PCA.


=head2 ListCertificateAuthorities

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ACMPCA::ListCertificateAuthorities>

Returns: a L<Paws::ACMPCA::ListCertificateAuthoritiesResponse> instance

Lists the private certificate authorities that you created by using the
CreateCertificateAuthority operation.


=head2 ListTags

=over

=item CertificateAuthorityArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ACMPCA::ListTags>

Returns: a L<Paws::ACMPCA::ListTagsResponse> instance

Lists the tags, if any, that are associated with your private CA. Tags
are labels that you can use to identify and organize your CAs. Each tag
consists of a key and an optional value. Call the
TagCertificateAuthority operation to add one or more tags to your CA.
Call the UntagCertificateAuthority operation to remove tags.


=head2 RestoreCertificateAuthority

=over

=item CertificateAuthorityArn => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::RestoreCertificateAuthority>

Returns: nothing

Restores a certificate authority (CA) that is in the C<DELETED> state.
You can restore a CA during the period that you defined in the
B<PermanentDeletionTimeInDays> parameter of the
DeleteCertificateAuthority operation. Currently, you can specify 7 to
30 days. If you did not specify a B<PermanentDeletionTimeInDays> value,
by default you can restore the CA at any time in a 30 day period. You
can check the time remaining in the restoration period of a private CA
in the C<DELETED> state by calling the DescribeCertificateAuthority or
ListCertificateAuthorities operations. The status of a restored CA is
set to its pre-deletion status when the B<RestoreCertificateAuthority>
operation returns. To change its status to C<ACTIVE>, call the
UpdateCertificateAuthority operation. If the private CA was in the
C<PENDING_CERTIFICATE> state at deletion, you must use the
ImportCertificateAuthorityCertificate operation to import a certificate
authority into the private CA before it can be activated. You cannot
restore a CA after the restoration period has ended.


=head2 RevokeCertificate

=over

=item CertificateAuthorityArn => Str

=item CertificateSerial => Str

=item RevocationReason => Str


=back

Each argument is described in detail in: L<Paws::ACMPCA::RevokeCertificate>

Returns: nothing

Revokes a certificate that you issued by calling the IssueCertificate
operation. If you enable a certificate revocation list (CRL) when you
create or update your private CA, information about the revoked
certificates will be included in the CRL. ACM PCA writes the CRL to an
S3 bucket that you specify. For more information about revocation, see
the CrlConfiguration structure. ACM PCA also writes revocation
information to the audit report. For more information, see
CreateCertificateAuthorityAuditReport.


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
UntagCertificateAuthority operation. Call the ListTags operation to see
what tags are associated with your CA.


=head2 UntagCertificateAuthority

=over

=item CertificateAuthorityArn => Str

=item Tags => ArrayRef[L<Paws::ACMPCA::Tag>]


=back

Each argument is described in detail in: L<Paws::ACMPCA::UntagCertificateAuthority>

Returns: nothing

Remove one or more tags from your private CA. A tag consists of a
key-value pair. If you do not specify the value portion of the tag when
calling this operation, the tag will be removed regardless of value. If
you specify a value, the tag is removed only if it is associated with
the specified value. To add tags to a private CA, use the
TagCertificateAuthority. Call the ListTags operation to see what tags
are associated with your CA.


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




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCertificateAuthorities(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllCertificateAuthorities([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CertificateAuthorities, passing the object as the first parameter, and the string 'CertificateAuthorities' as the second parameter 

If not, it will return a a L<Paws::ACMPCA::ListCertificateAuthoritiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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

