package Paws::ACM;
  use Moose;
  sub service { 'acm' }
  sub signing_name { 'acm' }
  sub version { '2015-12-08' }
  sub target_prefix { 'CertificateManager' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddTagsToCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACM::AddTagsToCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACM::DeleteCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACM::DescribeCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACM::ExportCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACM::GetCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACM::ImportCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACM::ListCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACM::ListTagsForCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTagsFromCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACM::RemoveTagsFromCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RequestCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACM::RequestCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResendValidationEmail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACM::ResendValidationEmail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCertificateOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACM::UpdateCertificateOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCertificates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCertificates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCertificates(@_, NextToken => $next_result->NextToken);
        push @{ $result->CertificateSummaryList }, @{ $next_result->CertificateSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CertificateSummaryList') foreach (@{ $result->CertificateSummaryList });
        $result = $self->ListCertificates(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CertificateSummaryList') foreach (@{ $result->CertificateSummaryList });
    }

    return undef
  }


  sub operations { qw/AddTagsToCertificate DeleteCertificate DescribeCertificate ExportCertificate GetCertificate ImportCertificate ListCertificates ListTagsForCertificate RemoveTagsFromCertificate RequestCertificate ResendValidationEmail UpdateCertificateOptions / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM - Perl Interface to AWS AWS Certificate Manager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ACM');
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

AWS Certificate Manager

Welcome to the AWS Certificate Manager (ACM) API documentation.

You can use ACM to manage SSL/TLS certificates for your AWS-based
websites and applications. For general information about using ACM, see
the I<AWS Certificate Manager User Guide>
(http://docs.aws.amazon.com/acm/latest/userguide/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08>


=head1 METHODS

=head2 AddTagsToCertificate

=over

=item CertificateArn => Str

=item Tags => ArrayRef[L<Paws::ACM::Tag>]


=back

Each argument is described in detail in: L<Paws::ACM::AddTagsToCertificate>

Returns: nothing

Adds one or more tags to an ACM certificate. Tags are labels that you
can use to identify and organize your AWS resources. Each tag consists
of a C<key> and an optional C<value>. You specify the certificate on
input by its Amazon Resource Name (ARN). You specify the tag by using a
key-value pair.

You can apply a tag to just one certificate if you want to identify a
specific characteristic of that certificate, or you can apply the same
tag to multiple certificates if you want to filter for a common
relationship among those certificates. Similarly, you can apply the
same tag to multiple resources if you want to specify a relationship
among those resources. For example, you can add the same tag to an ACM
certificate and an Elastic Load Balancing load balancer to indicate
that they are both used by the same website. For more information, see
Tagging ACM certificates
(http://docs.aws.amazon.com/acm/latest/userguide/tags.html).

To remove one or more tags, use the RemoveTagsFromCertificate action.
To view all of the tags that have been applied to the certificate, use
the ListTagsForCertificate action.


=head2 DeleteCertificate

=over

=item CertificateArn => Str


=back

Each argument is described in detail in: L<Paws::ACM::DeleteCertificate>

Returns: nothing

Deletes a certificate and its associated private key. If this action
succeeds, the certificate no longer appears in the list that can be
displayed by calling the ListCertificates action or be retrieved by
calling the GetCertificate action. The certificate will not be
available for use by AWS services integrated with ACM.

You cannot delete an ACM certificate that is being used by another AWS
service. To delete a certificate that is in use, the certificate
association must first be removed.


=head2 DescribeCertificate

=over

=item CertificateArn => Str


=back

Each argument is described in detail in: L<Paws::ACM::DescribeCertificate>

Returns: a L<Paws::ACM::DescribeCertificateResponse> instance

Returns detailed metadata about the specified ACM certificate.


=head2 ExportCertificate

=over

=item CertificateArn => Str

=item Passphrase => Str


=back

Each argument is described in detail in: L<Paws::ACM::ExportCertificate>

Returns: a L<Paws::ACM::ExportCertificateResponse> instance

Exports a private certificate issued by a private certificate authority
(CA) for use anywhere. You can export the certificate, the certificate
chain, and the encrypted private key associated with the public key
embedded in the certificate. You must store the private key securely.
The private key is a 2048 bit RSA key. You must provide a passphrase
for the private key when exporting it. You can use the following
OpenSSL command to decrypt it later. Provide the passphrase when
prompted.

C<openssl rsa -in encrypted_key.pem -out decrypted_key.pem>


=head2 GetCertificate

=over

=item CertificateArn => Str


=back

Each argument is described in detail in: L<Paws::ACM::GetCertificate>

Returns: a L<Paws::ACM::GetCertificateResponse> instance

Retrieves a certificate specified by an ARN and its certificate chain .
The chain is an ordered list of certificates that contains the end
entity certificate, intermediate certificates of subordinate CAs, and
the root certificate in that order. The certificate and certificate
chain are base64 encoded. If you want to decode the certificate to see
the individual fields, you can use OpenSSL.


=head2 ImportCertificate

=over

=item Certificate => Str

=item PrivateKey => Str

=item [CertificateArn => Str]

=item [CertificateChain => Str]


=back

Each argument is described in detail in: L<Paws::ACM::ImportCertificate>

Returns: a L<Paws::ACM::ImportCertificateResponse> instance

Imports a certificate into AWS Certificate Manager (ACM) to use with
services that are integrated with ACM. Note that integrated services
(http://docs.aws.amazon.com/acm/latest/userguide/acm-services.html)
allow only certificate types and keys they support to be associated
with their resources. Further, their support differs depending on
whether the certificate is imported into IAM or into ACM. For more
information, see the documentation for each service. For more
information about importing certificates into ACM, see Importing
Certificates
(http://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html)
in the I<AWS Certificate Manager User Guide>.

ACM does not provide managed renewal
(http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html) for
certificates that you import.

Note the following guidelines when importing third party certificates:

=over

=item *

You must enter the private key that matches the certificate you are
importing.

=item *

The private key must be unencrypted. You cannot import a private key
that is protected by a password or a passphrase.

=item *

If the certificate you are importing is not self-signed, you must enter
its certificate chain.

=item *

If a certificate chain is included, the issuer must be the subject of
one of the certificates in the chain.

=item *

The certificate, private key, and certificate chain must be
PEM-encoded.

=item *

The current time must be between the C<Not Before> and C<Not After>
certificate fields.

=item *

The C<Issuer> field must not be empty.

=item *

The OCSP authority URL, if present, must not exceed 1000 characters.

=item *

To import a new certificate, omit the C<CertificateArn> argument.
Include this argument only when you want to replace a previously
imported certificate.

=item *

When you import a certificate by using the CLI, you must specify the
certificate, the certificate chain, and the private key by their file
names preceded by C<file://>. For example, you can specify a
certificate saved in the C<C:\temp> folder as
C<file://C:\temp\certificate_to_import.pem>. If you are making an HTTP
or HTTPS Query request, include these arguments as BLOBs.

=item *

When you import a certificate by using an SDK, you must specify the
certificate, the certificate chain, and the private key files in the
manner required by the programming language you're using.

=back

This operation returns the Amazon Resource Name (ARN)
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the imported certificate.


=head2 ListCertificates

=over

=item [CertificateStatuses => ArrayRef[Str|Undef]]

=item [Includes => L<Paws::ACM::Filters>]

=item [MaxItems => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ACM::ListCertificates>

Returns: a L<Paws::ACM::ListCertificatesResponse> instance

Retrieves a list of certificate ARNs and domain names. You can request
that only certificates that match a specific status be listed. You can
also filter by specific attributes of the certificate.


=head2 ListTagsForCertificate

=over

=item CertificateArn => Str


=back

Each argument is described in detail in: L<Paws::ACM::ListTagsForCertificate>

Returns: a L<Paws::ACM::ListTagsForCertificateResponse> instance

Lists the tags that have been applied to the ACM certificate. Use the
certificate's Amazon Resource Name (ARN) to specify the certificate. To
add a tag to an ACM certificate, use the AddTagsToCertificate action.
To delete a tag, use the RemoveTagsFromCertificate action.


=head2 RemoveTagsFromCertificate

=over

=item CertificateArn => Str

=item Tags => ArrayRef[L<Paws::ACM::Tag>]


=back

Each argument is described in detail in: L<Paws::ACM::RemoveTagsFromCertificate>

Returns: nothing

Remove one or more tags from an ACM certificate. A tag consists of a
key-value pair. If you do not specify the value portion of the tag when
calling this function, the tag will be removed regardless of value. If
you specify a value, the tag is removed only if it is associated with
the specified value.

To add tags to a certificate, use the AddTagsToCertificate action. To
view all of the tags that have been applied to a specific ACM
certificate, use the ListTagsForCertificate action.


=head2 RequestCertificate

=over

=item DomainName => Str

=item [CertificateAuthorityArn => Str]

=item [DomainValidationOptions => ArrayRef[L<Paws::ACM::DomainValidationOption>]]

=item [IdempotencyToken => Str]

=item [Options => L<Paws::ACM::CertificateOptions>]

=item [SubjectAlternativeNames => ArrayRef[Str|Undef]]

=item [ValidationMethod => Str]


=back

Each argument is described in detail in: L<Paws::ACM::RequestCertificate>

Returns: a L<Paws::ACM::RequestCertificateResponse> instance

Requests an ACM certificate for use with other AWS services. To request
an ACM certificate, you must specify a fully qualified domain name
(FQDN) in the C<DomainName> parameter. You can also specify additional
FQDNs in the C<SubjectAlternativeNames> parameter.

If you are requesting a private certificate, domain validation is not
required. If you are requesting a public certificate, each domain name
that you specify must be validated to verify that you own or control
the domain. You can use DNS validation
(http://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html)
or email validation
(http://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html).
We recommend that you use DNS validation. ACM issues public
certificates after receiving approval from the domain owner.


=head2 ResendValidationEmail

=over

=item CertificateArn => Str

=item Domain => Str

=item ValidationDomain => Str


=back

Each argument is described in detail in: L<Paws::ACM::ResendValidationEmail>

Returns: nothing

Resends the email that requests domain ownership validation. The domain
owner or an authorized representative must approve the ACM certificate
before it can be issued. The certificate can be approved by clicking a
link in the mail to navigate to the Amazon certificate approval website
and then clicking B<I Approve>. However, the validation email can be
blocked by spam filters. Therefore, if you do not receive the original
mail, you can request that the mail be resent within 72 hours of
requesting the ACM certificate. If more than 72 hours have elapsed
since your original request or since your last attempt to resend
validation mail, you must request a new certificate. For more
information about setting up your contact email addresses, see
Configure Email for your Domain
(http://docs.aws.amazon.com/acm/latest/userguide/setup-email.html).


=head2 UpdateCertificateOptions

=over

=item CertificateArn => Str

=item Options => L<Paws::ACM::CertificateOptions>


=back

Each argument is described in detail in: L<Paws::ACM::UpdateCertificateOptions>

Returns: nothing

Updates a certificate. Currently, you can use this function to specify
whether to opt in to or out of recording your certificate in a
certificate transparency log. For more information, see Opting Out of
Certificate Transparency Logging
(http://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCertificates(sub { },[CertificateStatuses => ArrayRef[Str|Undef], Includes => L<Paws::ACM::Filters>, MaxItems => Int, NextToken => Str])

=head2 ListAllCertificates([CertificateStatuses => ArrayRef[Str|Undef], Includes => L<Paws::ACM::Filters>, MaxItems => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CertificateSummaryList, passing the object as the first parameter, and the string 'CertificateSummaryList' as the second parameter 

If not, it will return a a L<Paws::ACM::ListCertificatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

