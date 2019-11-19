
package Paws::Chime::PutEventsConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has AccountId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BotId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has LambdaFunctionArn => (is => 'ro', isa => Str, predicate => 1);
  has OutboundEventsHTTPSEndpoint => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutEventsConfiguration');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/accounts/{accountId}/bots/{botId}/events-configuration');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::PutEventsConfigurationResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LambdaFunctionArn' => {
                                        'type' => 'Str'
                                      },
               'AccountId' => {
                                'type' => 'Str'
                              },
               'OutboundEventsHTTPSEndpoint' => {
                                                  'type' => 'Str'
                                                },
               'BotId' => {
                            'type' => 'Str'
                          }
             },
  'IsRequired' => {
                    'BotId' => 1,
                    'AccountId' => 1
                  },
  'ParamInURI' => {
                    'AccountId' => 'accountId',
                    'BotId' => 'botId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PutEventsConfiguration - Arguments for method PutEventsConfiguration on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutEventsConfiguration on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method PutEventsConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutEventsConfiguration.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $PutEventsConfigurationResponse = $chime->PutEventsConfiguration(
      AccountId                   => 'MyNonEmptyString',
      BotId                       => 'MyNonEmptyString',
      LambdaFunctionArn           => 'MySensitiveString',    # OPTIONAL
      OutboundEventsHTTPSEndpoint => 'MySensitiveString',    # OPTIONAL
    );

    # Results:
    my $EventsConfiguration =
      $PutEventsConfigurationResponse->EventsConfiguration;

    # Returns a L<Paws::Chime::PutEventsConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/PutEventsConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 B<REQUIRED> BotId => Str

The bot ID.



=head2 LambdaFunctionArn => Str

Lambda function ARN that allows the bot to receive outgoing events.



=head2 OutboundEventsHTTPSEndpoint => Str

HTTPS endpoint that allows the bot to receive outgoing events.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutEventsConfiguration in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

