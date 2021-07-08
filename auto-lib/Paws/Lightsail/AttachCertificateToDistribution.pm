
package Paws::Lightsail::AttachCertificateToDistribution;
  use Moose;
  has CertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateName' , required => 1);
  has DistributionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachCertificateToDistribution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::AttachCertificateToDistributionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::AttachCertificateToDistribution - Arguments for method AttachCertificateToDistribution on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachCertificateToDistribution on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method AttachCertificateToDistribution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachCertificateToDistribution.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $AttachCertificateToDistributionResult =
      $lightsail->AttachCertificateToDistribution(
      CertificateName  => 'MyResourceName',
      DistributionName => 'MyResourceName',

      );

    # Results:
    my $Operation = $AttachCertificateToDistributionResult->Operation;

   # Returns a L<Paws::Lightsail::AttachCertificateToDistributionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/AttachCertificateToDistribution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateName => Str

The name of the certificate to attach to a distribution.

Only certificates with a status of C<ISSUED> can be attached to a
distribution.

Use the C<GetCertificates> action to get a list of certificate names
that you can specify.

This is the name of the certificate resource type and is used only to
reference the certificate in other API actions. It can be different
than the domain name of the certificate. For example, your certificate
name might be C<WordPress-Blog-Certificate> and the domain name of the
certificate might be C<example.com>.



=head2 B<REQUIRED> DistributionName => Str

The name of the distribution that the certificate will be attached to.

Use the C<GetDistributions> action to get a list of distribution names
that you can specify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachCertificateToDistribution in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

