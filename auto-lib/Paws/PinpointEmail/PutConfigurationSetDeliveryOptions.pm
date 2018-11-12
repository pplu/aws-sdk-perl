
package Paws::PinpointEmail::PutConfigurationSetDeliveryOptions;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConfigurationSetName', required => 1);
  has SendingPoolName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutConfigurationSetDeliveryOptions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/email/configuration-sets/{ConfigurationSetName}/delivery-options');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointEmail::PutConfigurationSetDeliveryOptionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::PutConfigurationSetDeliveryOptions - Arguments for method PutConfigurationSetDeliveryOptions on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutConfigurationSetDeliveryOptions on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method PutConfigurationSetDeliveryOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutConfigurationSetDeliveryOptions.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $PutConfigurationSetDeliveryOptionsResponse =
      $email->PutConfigurationSetDeliveryOptions(
      ConfigurationSetName => 'MyConfigurationSetName',
      SendingPoolName      => 'MySendingPoolName',        # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutConfigurationSetDeliveryOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set that you want to associate with a
dedicated IP pool.



=head2 SendingPoolName => Str

The name of the dedicated IP pool that you want to associate with the
configuration set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutConfigurationSetDeliveryOptions in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

