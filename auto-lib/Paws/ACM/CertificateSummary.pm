package Paws::ACM::CertificateSummary;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::CertificateSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ACM::CertificateSummary object:

  $service_obj->Method(Att1 => { CertificateArn => $value, ..., DomainName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACM::CertificateSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateArn

=head1 DESCRIPTION

This structure is returned in the response object of ListCertificates
action.

=head1 ATTRIBUTES


=head2 CertificateArn => Str

  Amazon Resource Name (ARN) of the certificate. This is of the form:

C<arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012>

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


=head2 DomainName => Str

  Fully qualified domain name (FQDN), such as www.example.com or
example.com, for the certificate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

