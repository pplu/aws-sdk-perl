package Paws::ACM;
  use Moose;
  sub service { 'acm' }
  sub version { '2015-12-08' }
  sub target_prefix { 'CertificateManager' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
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


  sub operations { qw/AddTagsToCertificate DeleteCertificate DescribeCertificate GetCertificate ImportCertificate ListCertificates ListTagsForCertificate RemoveTagsFromCertificate RequestCertificate ResendValidationEmail / }

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

=head1 METHODS

=head2 AddTagsToCertificate(CertificateArn => Str, Tags => ArrayRef[L<Paws::ACM::Tag>])

Each argument is described in detail in: L<Paws::ACM::AddTagsToCertificate>

Returns: nothing

  Adds one or more tags to an ACM Certificate. Tags are labels that you
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
Certificate and an Elastic Load Balancing load balancer to indicate
that they are both used by the same website. For more information, see
Tagging ACM Certificates
(http://docs.aws.amazon.com/acm/latest/userguide/tags.html).

To remove one or more tags, use the RemoveTagsFromCertificate action.
To view all of the tags that have been applied to the certificate, use
the ListTagsForCertificate action.


=head2 DeleteCertificate(CertificateArn => Str)

Each argument is described in detail in: L<Paws::ACM::DeleteCertificate>

Returns: nothing

  Deletes an ACM Certificate and its associated private key. If this
action succeeds, the certificate no longer appears in the list of ACM
Certificates that can be displayed by calling the ListCertificates
action or be retrieved by calling the GetCertificate action. The
certificate will not be available for use by other AWS services.

You cannot delete an ACM Certificate that is being used by another AWS
service. To delete a certificate that is in use, the certificate
association must first be removed.


=head2 DescribeCertificate(CertificateArn => Str)

Each argument is described in detail in: L<Paws::ACM::DescribeCertificate>

Returns: a L<Paws::ACM::DescribeCertificateResponse> instance

  Returns detailed metadata about the specified ACM Certificate.


=head2 GetCertificate(CertificateArn => Str)

Each argument is described in detail in: L<Paws::ACM::GetCertificate>

Returns: a L<Paws::ACM::GetCertificateResponse> instance

  Retrieves an ACM Certificate and certificate chain for the certificate
specified by an ARN. The chain is an ordered list of certificates that
contains the root certificate, intermediate certificates of subordinate
CAs, and the ACM Certificate. The certificate and certificate chain are
base64 encoded. If you want to decode the certificate chain to see the
individual certificate fields, you can use OpenSSL.

Currently, ACM Certificates can be used only with Elastic Load
Balancing and Amazon CloudFront.


=head2 ImportCertificate(Certificate => Str, PrivateKey => Str, [CertificateArn => Str, CertificateChain => Str])

Each argument is described in detail in: L<Paws::ACM::ImportCertificate>

Returns: a L<Paws::ACM::ImportCertificateResponse> instance

  Imports an SSL/TLS certificate into AWS Certificate Manager (ACM) to
use with ACM's integrated AWS services
(http://docs.aws.amazon.com/acm/latest/userguide/acm-services.html).

ACM does not provide managed renewal
(http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html) for
certificates that you import.

For more information about importing certificates into ACM, including
the differences between certificates that you import and those that ACM
provides, see Importing Certificates
(http://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html)
in the I<AWS Certificate Manager User Guide>.

To import a certificate, you must provide the certificate and the
matching private key. When the certificate is not self-signed, you must
also provide a certificate chain. You can omit the certificate chain
when importing a self-signed certificate.

The certificate, private key, and certificate chain must be
PEM-encoded. For more information about converting these items to PEM
format, see Importing Certificates Troubleshooting
(http://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html#import-certificate-troubleshooting)
in the I<AWS Certificate Manager User Guide>.

To import a new certificate, omit the C<CertificateArn> field. Include
this field only when you want to replace a previously imported
certificate.

This operation returns the Amazon Resource Name (ARN)
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the imported certificate.


=head2 ListCertificates([CertificateStatuses => ArrayRef[Str|Undef], MaxItems => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::ACM::ListCertificates>

Returns: a L<Paws::ACM::ListCertificatesResponse> instance

  Retrieves a list of ACM Certificates and the domain name for each. You
can optionally filter the list to return only the certificates that
match the specified status.


=head2 ListTagsForCertificate(CertificateArn => Str)

Each argument is described in detail in: L<Paws::ACM::ListTagsForCertificate>

Returns: a L<Paws::ACM::ListTagsForCertificateResponse> instance

  Lists the tags that have been applied to the ACM Certificate. Use the
certificate's Amazon Resource Name (ARN) to specify the certificate. To
add a tag to an ACM Certificate, use the AddTagsToCertificate action.
To delete a tag, use the RemoveTagsFromCertificate action.


=head2 RemoveTagsFromCertificate(CertificateArn => Str, Tags => ArrayRef[L<Paws::ACM::Tag>])

Each argument is described in detail in: L<Paws::ACM::RemoveTagsFromCertificate>

Returns: nothing

  Remove one or more tags from an ACM Certificate. A tag consists of a
key-value pair. If you do not specify the value portion of the tag when
calling this function, the tag will be removed regardless of value. If
you specify a value, the tag is removed only if it is associated with
the specified value.

To add tags to a certificate, use the AddTagsToCertificate action. To
view all of the tags that have been applied to a specific ACM
Certificate, use the ListTagsForCertificate action.


=head2 RequestCertificate(DomainName => Str, [DomainValidationOptions => ArrayRef[L<Paws::ACM::DomainValidationOption>], IdempotencyToken => Str, SubjectAlternativeNames => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::ACM::RequestCertificate>

Returns: a L<Paws::ACM::RequestCertificateResponse> instance

  Requests an ACM Certificate for use with other AWS services. To request
an ACM Certificate, you must specify the fully qualified domain name
(FQDN) for your site. You can also specify additional FQDNs if users
can reach your site by using other names. For each domain name you
specify, email is sent to the domain owner to request approval to issue
the certificate. After receiving approval from the domain owner, the
ACM Certificate is issued. For more information, see the AWS
Certificate Manager User Guide
(http://docs.aws.amazon.com/acm/latest/userguide/).


=head2 ResendValidationEmail(CertificateArn => Str, Domain => Str, ValidationDomain => Str)

Each argument is described in detail in: L<Paws::ACM::ResendValidationEmail>

Returns: nothing

  Resends the email that requests domain ownership validation. The domain
owner or an authorized representative must approve the ACM Certificate
before it can be issued. The certificate can be approved by clicking a
link in the mail to navigate to the Amazon certificate approval website
and then clicking B<I Approve>. However, the validation email can be
blocked by spam filters. Therefore, if you do not receive the original
mail, you can request that the mail be resent within 72 hours of
requesting the ACM Certificate. If more than 72 hours have elapsed
since your original request or since your last attempt to resend
validation mail, you must request a new certificate. For more
information about setting up your contact email addresses, see
Configure Email for your Domain
(http://docs.aws.amazon.com/acm/latest/userguide/setup-email.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCertificates(sub { },[CertificateStatuses => ArrayRef[Str|Undef], MaxItems => Int, NextToken => Str])

=head2 ListAllCertificates([CertificateStatuses => ArrayRef[Str|Undef], MaxItems => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CertificateSummaryList, passing the object as the first parameter, and the string 'CertificateSummaryList' as the second parameter 

If not, it will return a a L<Paws::ACM::ListCertificatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

