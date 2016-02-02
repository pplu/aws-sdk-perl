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
  sub ListCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ACM::ListCertificates', @_);
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

  sub operations { qw/DeleteCertificate DescribeCertificate GetCertificate ListCertificates RequestCertificate ResendValidationEmail / }

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

Welcome to the AWS Certificate Manager (ACM) CLI Command Reference.
This guide provides descriptions, syntax, and usage examples for each
ACM CLI command. You can use AWS Certificate Manager to request ACM
Certificates for your AWS-based websites and applications. For general
information about using ACM and for more information about using the
console, see the AWS Certificate Manager User Guide. For more
information about using the ACM API, see the AWS Certificate Manager
API Reference.

=head1 METHODS

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

  Returns a list of the fields contained in the specified ACM
Certificate. For example, this action returns the certificate status, a
flag that indicates whether the certificate is associated with any
other AWS service, and the date at which the certificate request was
created. The ACM Certificate is specified on input by its Amazon
Resource Name (ARN).


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


=head2 ListCertificates([CertificateStatuses => ArrayRef[Str], MaxItems => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::ACM::ListCertificates>

Returns: a L<Paws::ACM::ListCertificatesResponse> instance

  Retrieves a list of the ACM Certificate ARNs, and the domain name for
each ARN, owned by the calling account. You can filter the list based
on the C<CertificateStatuses> parameter, and you can display up to
C<MaxItems> certificates at one time. If you have more than C<MaxItems>
certificates, use the C<NextToken> marker from the response object in
your next call to the C<ListCertificates> action to retrieve the next
set of certificate ARNs.


=head2 RequestCertificate(DomainName => Str, [DomainValidationOptions => ArrayRef[L<Paws::ACM::DomainValidationOption>], IdempotencyToken => Str, SubjectAlternativeNames => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::ACM::RequestCertificate>

Returns: a L<Paws::ACM::RequestCertificateResponse> instance

  Requests an ACM Certificate for use with other AWS services. To request
an ACM Certificate, you must specify the fully qualified domain name
(FQDN) for your site. You can also specify additional FQDNs if users
can reach your site by using other names. For each domain name you
specify, email is sent to the domain owner to request approval to issue
the certificate. After receiving approval from the domain owner, the
ACM Certificate is issued. For more information, see the AWS
Certificate Manager User Guide .


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
validation mail, you must request a new certificate.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

