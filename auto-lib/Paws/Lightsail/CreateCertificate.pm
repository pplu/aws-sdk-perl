
package Paws::Lightsail::CreateCertificate;
  use Moose;
  has CertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateName' , required => 1);
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName' , required => 1);
  has SubjectAlternativeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subjectAlternativeNames' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateCertificateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateCertificate - Arguments for method CreateCertificate on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCertificate on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCertificate.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateCertificateResult = $lightsail->CreateCertificate(
      CertificateName         => 'MyCertificateName',
      DomainName              => 'MyDomainName',
      SubjectAlternativeNames => [ 'MyDomainName', ... ],    # OPTIONAL
      Tags                    => [
        {
          Key   => 'MyTagKey',                               # OPTIONAL
          Value => 'MyTagValue',                             # OPTIONAL
        },
        ...
      ],                                                     # OPTIONAL
    );

    # Results:
    my $Certificate = $CreateCertificateResult->Certificate;
    my $Operations  = $CreateCertificateResult->Operations;

    # Returns a L<Paws::Lightsail::CreateCertificateResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateName => Str

The name for the certificate.



=head2 B<REQUIRED> DomainName => Str

The domain name (e.g., C<example.com>) for the certificate.



=head2 SubjectAlternativeNames => ArrayRef[Str|Undef]

An array of strings that specify the alternate domains (e.g.,
C<example2.com>) and subdomains (e.g., C<blog.example.com>) for the
certificate.

You can specify a maximum of nine alternate domains (in addition to the
primary domain name).

Wildcard domain entries (e.g., C<*.example.com>) are not supported.



=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

The tag keys and optional values to add to the certificate during
create.

Use the C<TagResource> action to tag a resource after it's created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCertificate in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

