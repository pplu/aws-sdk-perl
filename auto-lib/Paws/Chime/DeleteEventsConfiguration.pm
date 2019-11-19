
package Paws::Chime::DeleteEventsConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has AccountId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BotId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteEventsConfiguration');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/accounts/{accountId}/bots/{botId}/events-configuration');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'BotId' => 'botId',
                    'AccountId' => 'accountId'
                  },
  'types' => {
               'BotId' => {
                            'type' => 'Str'
                          },
               'AccountId' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'BotId' => 1,
                    'AccountId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::DeleteEventsConfiguration - Arguments for method DeleteEventsConfiguration on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEventsConfiguration on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method DeleteEventsConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEventsConfiguration.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    $chime->DeleteEventsConfiguration(
      AccountId => 'MyNonEmptyString',
      BotId     => 'MyNonEmptyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/DeleteEventsConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 B<REQUIRED> BotId => Str

The bot ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEventsConfiguration in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

