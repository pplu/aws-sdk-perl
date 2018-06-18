
package Paws::SES::UpdateConfigurationSetEventDestination;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);
  has EventDestination => (is => 'ro', isa => 'Paws::SES::EventDestination', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationSetEventDestination');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::UpdateConfigurationSetEventDestinationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationSetEventDestinationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::UpdateConfigurationSetEventDestination - Arguments for method UpdateConfigurationSetEventDestination on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConfigurationSetEventDestination on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method UpdateConfigurationSetEventDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConfigurationSetEventDestination.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    my $UpdateConfigurationSetEventDestinationResponse =
      $email->UpdateConfigurationSetEventDestination(
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/UpdateConfigurationSetEventDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set that contains the event destination
that you want to update.



=head2 B<REQUIRED> EventDestination => L<Paws::SES::EventDestination>

The event destination object that you want to apply to the specified
configuration set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConfigurationSetEventDestination in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

