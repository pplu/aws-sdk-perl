
package Paws::Greengrass::UpdateGroupCertificateConfiguration;
  use Moose;
  has CertificateExpiryInMilliseconds => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGroupCertificateConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::UpdateGroupCertificateConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::UpdateGroupCertificateConfiguration - Arguments for method UpdateGroupCertificateConfiguration on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGroupCertificateConfiguration on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method UpdateGroupCertificateConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGroupCertificateConfiguration.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $UpdateGroupCertificateConfigurationResponse =
      $greengrass->UpdateGroupCertificateConfiguration(
      GroupId                         => 'My__string',
      CertificateExpiryInMilliseconds => 'My__string',    # OPTIONAL
      );

    # Results:
    my $CertificateAuthorityExpiryInMilliseconds =
      $UpdateGroupCertificateConfigurationResponse
      ->CertificateAuthorityExpiryInMilliseconds;
    my $CertificateExpiryInMilliseconds =
      $UpdateGroupCertificateConfigurationResponse
      ->CertificateExpiryInMilliseconds;
    my $GroupId = $UpdateGroupCertificateConfigurationResponse->GroupId;

# Returns a L<Paws::Greengrass::UpdateGroupCertificateConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/UpdateGroupCertificateConfiguration>

=head1 ATTRIBUTES


=head2 CertificateExpiryInMilliseconds => Str

The amount of time remaining before the certificate expires, in
milliseconds.



=head2 B<REQUIRED> GroupId => Str

The ID of the Greengrass group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGroupCertificateConfiguration in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

