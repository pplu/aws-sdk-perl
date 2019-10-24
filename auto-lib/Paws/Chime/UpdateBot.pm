
package Paws::Chime::UpdateBot;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Chime::Types qw//;
  has AccountId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BotId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Disabled => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateBot');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/accounts/{accountId}/bots/{botId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::UpdateBotResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Disabled' => {
                               'type' => 'Bool'
                             },
               'AccountId' => {
                                'type' => 'Str'
                              },
               'BotId' => {
                            'type' => 'Str'
                          }
             },
  'ParamInURI' => {
                    'AccountId' => 'accountId',
                    'BotId' => 'botId'
                  },
  'IsRequired' => {
                    'AccountId' => 1,
                    'BotId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdateBot - Arguments for method UpdateBot on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBot on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method UpdateBot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBot.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $UpdateBotResponse = $chime->UpdateBot(
      AccountId => 'MyNonEmptyString',
      BotId     => 'MyNonEmptyString',
      Disabled  => 1,                    # OPTIONAL
    );

    # Results:
    my $Bot = $UpdateBotResponse->Bot;

    # Returns a L<Paws::Chime::UpdateBotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/UpdateBot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 B<REQUIRED> BotId => Str

The bot ID.



=head2 Disabled => Bool

When true, stops the specified bot from running in your account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBot in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

