
package Paws::PinpointEmail::CreateConfigurationSet;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has DeliveryOptions => (is => 'ro', isa => 'Paws::PinpointEmail::DeliveryOptions');
  has ReputationOptions => (is => 'ro', isa => 'Paws::PinpointEmail::ReputationOptions');
  has SendingOptions => (is => 'ro', isa => 'Paws::PinpointEmail::SendingOptions');
  has TrackingOptions => (is => 'ro', isa => 'Paws::PinpointEmail::TrackingOptions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfigurationSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/email/configuration-sets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointEmail::CreateConfigurationSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::CreateConfigurationSet - Arguments for method CreateConfigurationSet on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfigurationSet on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method CreateConfigurationSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfigurationSet.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $CreateConfigurationSetResponse = $email->CreateConfigurationSet(
      ConfigurationSetName => 'MyConfigurationSetName',    # OPTIONAL
      DeliveryOptions      => {
        SendingPoolName => 'MyPoolName',                   # OPTIONAL
      },    # OPTIONAL
      ReputationOptions => {
        LastFreshStart           => '1970-01-01T01:00:00',    # OPTIONAL
        ReputationMetricsEnabled => 1,                        # OPTIONAL
      },    # OPTIONAL
      SendingOptions => {
        SendingEnabled => 1,    # OPTIONAL
      },    # OPTIONAL
      TrackingOptions => {
        CustomRedirectDomain => 'MyCustomRedirectDomain',

      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateConfigurationSet>

=head1 ATTRIBUTES


=head2 ConfigurationSetName => Str

The name of the configuration set.



=head2 DeliveryOptions => L<Paws::PinpointEmail::DeliveryOptions>

An object that defines the dedicated IP pool that is used to send
emails that you send using the configuration set.



=head2 ReputationOptions => L<Paws::PinpointEmail::ReputationOptions>

An object that defines whether or not Amazon Pinpoint collects
reputation metrics for the emails that you send that use the
configuration set.



=head2 SendingOptions => L<Paws::PinpointEmail::SendingOptions>

An object that defines whether or not Amazon Pinpoint can send email
that you send using the configuration set.



=head2 TrackingOptions => L<Paws::PinpointEmail::TrackingOptions>

An object that defines the open and click tracking options for emails
that you send using the configuration set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfigurationSet in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

