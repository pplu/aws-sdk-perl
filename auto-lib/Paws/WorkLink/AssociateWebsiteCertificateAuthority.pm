
package Paws::WorkLink::AssociateWebsiteCertificateAuthority;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Str', required => 1);
  has DisplayName => (is => 'ro', isa => 'Str');
  has FleetArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateWebsiteCertificateAuthority');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/associateWebsiteCertificateAuthority');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkLink::AssociateWebsiteCertificateAuthorityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::AssociateWebsiteCertificateAuthority - Arguments for method AssociateWebsiteCertificateAuthority on L<Paws::WorkLink>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateWebsiteCertificateAuthority on the
L<Amazon WorkLink|Paws::WorkLink> service. Use the attributes of this class
as arguments to method AssociateWebsiteCertificateAuthority.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateWebsiteCertificateAuthority.

=head1 SYNOPSIS

    my $worklink = Paws->service('WorkLink');
    my $AssociateWebsiteCertificateAuthorityResponse =
      $worklink->AssociateWebsiteCertificateAuthority(
      Certificate => 'MyCertificate',
      FleetArn    => 'MyFleetArn',
      DisplayName => 'MyDisplayName',    # OPTIONAL
      );

    # Results:
    my $WebsiteCaId =
      $AssociateWebsiteCertificateAuthorityResponse->WebsiteCaId;

# Returns a L<Paws::WorkLink::AssociateWebsiteCertificateAuthorityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/worklink/AssociateWebsiteCertificateAuthority>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Certificate => Str

The root certificate of the CA.



=head2 DisplayName => Str

The certificate name to display.



=head2 B<REQUIRED> FleetArn => Str

The ARN of the fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateWebsiteCertificateAuthority in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

