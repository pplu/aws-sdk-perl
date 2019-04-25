
package Paws::SES::CreateConfigurationSetEventDestination;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);
  has EventDestination => (is => 'ro', isa => 'Paws::SES::EventDestination', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfigurationSetEventDestination');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::CreateConfigurationSetEventDestinationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateConfigurationSetEventDestinationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::CreateConfigurationSetEventDestination - Arguments for method CreateConfigurationSetEventDestination on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfigurationSetEventDestination on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method CreateConfigurationSetEventDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfigurationSetEventDestination.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    my $CreateConfigurationSetEventDestinationResponse =
      $email->CreateConfigurationSetEventDestination(
      ConfigurationSetName => 'MyConfigurationSetName',
      EventDestination     => {
        MatchingEventTypes => [
          'send',
          ... # values: send, reject, bounce, complaint, delivery, open, click, renderingFailure
        ],
        Name                  => 'MyEventDestinationName',
        CloudWatchDestination => {
          DimensionConfigurations => [
            {
              DefaultDimensionValue => 'MyDefaultDimensionValue',
              DimensionName         => 'MyDimensionName',
              DimensionValueSource =>
                'messageTag',    # values: messageTag, emailHeader, linkTag

            },
            ...
          ],

        },    # OPTIONAL
        Enabled                    => 1,    # OPTIONAL
        KinesisFirehoseDestination => {
          DeliveryStreamARN => 'MyAmazonResourceName',
          IAMRoleARN        => 'MyAmazonResourceName',

        },                                  # OPTIONAL
        SNSDestination => {
          TopicARN => 'MyAmazonResourceName',

        },                                  # OPTIONAL
      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateConfigurationSetEventDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set that the event destination should be
associated with.



=head2 B<REQUIRED> EventDestination => L<Paws::SES::EventDestination>

An object that describes the AWS service that email sending event
information will be published to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfigurationSetEventDestination in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

