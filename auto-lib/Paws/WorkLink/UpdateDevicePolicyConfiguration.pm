
package Paws::WorkLink::UpdateDevicePolicyConfiguration;
  use Moose;
  has DeviceCaCertificate => (is => 'ro', isa => 'Str');
  has FleetArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDevicePolicyConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateDevicePolicyConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkLink::UpdateDevicePolicyConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::UpdateDevicePolicyConfiguration - Arguments for method UpdateDevicePolicyConfiguration on L<Paws::WorkLink>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDevicePolicyConfiguration on the
L<Amazon WorkLink|Paws::WorkLink> service. Use the attributes of this class
as arguments to method UpdateDevicePolicyConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDevicePolicyConfiguration.

=head1 SYNOPSIS

    my $worklink = Paws->service('WorkLink');
    my $UpdateDevicePolicyConfigurationResponse =
      $worklink->UpdateDevicePolicyConfiguration(
      FleetArn            => 'MyFleetArn',
      DeviceCaCertificate => 'MyCertificateChain',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/worklink/UpdateDevicePolicyConfiguration>

=head1 ATTRIBUTES


=head2 DeviceCaCertificate => Str

The certificate chain, including intermediate certificates and the root
certificate authority certificate used to issue device certificates.



=head2 B<REQUIRED> FleetArn => Str

The ARN of the fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDevicePolicyConfiguration in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

