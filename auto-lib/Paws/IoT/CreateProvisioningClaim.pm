
package Paws::IoT::CreateProvisioningClaim;
  use Moose;
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'templateName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProvisioningClaim');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/provisioning-templates/{templateName}/provisioning-claim');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateProvisioningClaimResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateProvisioningClaim - Arguments for method CreateProvisioningClaim on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProvisioningClaim on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateProvisioningClaim.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProvisioningClaim.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateProvisioningClaimResponse = $iot->CreateProvisioningClaim(
      TemplateName => 'MyTemplateName',

    );

    # Results:
    my $CertificateId  = $CreateProvisioningClaimResponse->CertificateId;
    my $CertificatePem = $CreateProvisioningClaimResponse->CertificatePem;
    my $Expiration     = $CreateProvisioningClaimResponse->Expiration;
    my $KeyPair        = $CreateProvisioningClaimResponse->KeyPair;

    # Returns a L<Paws::IoT::CreateProvisioningClaimResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateProvisioningClaim>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateName => Str

The name of the provisioning template to use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProvisioningClaim in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

