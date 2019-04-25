
package Paws::PinpointEmail::PutConfigurationSetReputationOptions;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConfigurationSetName', required => 1);
  has ReputationMetricsEnabled => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutConfigurationSetReputationOptions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/email/configuration-sets/{ConfigurationSetName}/reputation-options');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointEmail::PutConfigurationSetReputationOptionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::PutConfigurationSetReputationOptions - Arguments for method PutConfigurationSetReputationOptions on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutConfigurationSetReputationOptions on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method PutConfigurationSetReputationOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutConfigurationSetReputationOptions.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $PutConfigurationSetReputationOptionsResponse =
      $email->PutConfigurationSetReputationOptions(
      ConfigurationSetName     => 'MyConfigurationSetName',
      ReputationMetricsEnabled => 1,                          # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutConfigurationSetReputationOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set that you want to enable or disable
reputation metric tracking for.



=head2 ReputationMetricsEnabled => Bool

If C<true>, tracking of reputation metrics is enabled for the
configuration set. If C<false>, tracking of reputation metrics is
disabled for the configuration set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutConfigurationSetReputationOptions in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

