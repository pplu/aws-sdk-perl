
package Paws::PinpointEmail::CreateConfigurationSetEventDestination;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConfigurationSetName', required => 1);
  has EventDestination => (is => 'ro', isa => 'Paws::PinpointEmail::EventDestinationDefinition', required => 1);
  has EventDestinationName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfigurationSetEventDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointEmail::CreateConfigurationSetEventDestinationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::CreateConfigurationSetEventDestination - Arguments for method CreateConfigurationSetEventDestination on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfigurationSetEventDestination on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method CreateConfigurationSetEventDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfigurationSetEventDestination.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $CreateConfigurationSetEventDestinationResponse =
      $email->CreateConfigurationSetEventDestination(
      ConfigurationSetName => 'MyConfigurationSetName',
      EventDestination     => {
        CloudWatchDestination => {
          DimensionConfigurations => [
            {
              DefaultDimensionValue => 'MyDefaultDimensionValue',
              DimensionName         => 'MyDimensionName',
              DimensionValueSource =>
                'MESSAGE_TAG',    # values: MESSAGE_TAG, EMAIL_HEADER, LINK_TAG

            },
            ...
          ],

        },    # OPTIONAL
        Enabled                    => 1,    # OPTIONAL
        KinesisFirehoseDestination => {
          DeliveryStreamArn => 'MyAmazonResourceName',    # OPTIONAL
          IamRoleArn        => 'MyAmazonResourceName',    # OPTIONAL

        },    # OPTIONAL
        MatchingEventTypes => [
          'SEND',
          ... # values: SEND, REJECT, BOUNCE, COMPLAINT, DELIVERY, OPEN, CLICK, RENDERING_FAILURE
        ],    # OPTIONAL
        PinpointDestination => {
          ApplicationArn => 'MyAmazonResourceName',    # OPTIONAL
        },    # OPTIONAL
        SnsDestination => {
          TopicArn => 'MyAmazonResourceName',    # OPTIONAL

        },    # OPTIONAL
      },
      EventDestinationName => 'MyEventDestinationName',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateConfigurationSetEventDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set that you want to add an event
destination to.



=head2 B<REQUIRED> EventDestination => L<Paws::PinpointEmail::EventDestinationDefinition>

An object that defines the event destination.



=head2 B<REQUIRED> EventDestinationName => Str

A name that identifies the event destination within the configuration
set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfigurationSetEventDestination in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

