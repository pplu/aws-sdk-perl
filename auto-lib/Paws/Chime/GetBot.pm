
package Paws::Chime::GetBot;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{accountId}/bots/{botId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::GetBotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetBot - Arguments for method GetBot on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBot on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method GetBot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBot.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $GetBotResponse = $chime->GetBot(
      AccountId => 'MyNonEmptyString',
      BotId     => 'MyNonEmptyString',

    );

    # Results:
    my $Bot = $GetBotResponse->Bot;

    # Returns a L<Paws::Chime::GetBotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/GetBot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 B<REQUIRED> BotId => Str

The bot ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBot in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

