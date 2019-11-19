
package Paws::Chime::RegenerateSecurityToken;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has AccountId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BotId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RegenerateSecurityToken');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/accounts/{accountId}/bots/{botId}?operation=regenerate-security-token');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::RegenerateSecurityTokenResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'AccountId' => 1,
                    'BotId' => 1
                  },
  'types' => {
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
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::RegenerateSecurityToken - Arguments for method RegenerateSecurityToken on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegenerateSecurityToken on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method RegenerateSecurityToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegenerateSecurityToken.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $RegenerateSecurityTokenResponse = $chime->RegenerateSecurityToken(
      AccountId => 'MyNonEmptyString',
      BotId     => 'MyNonEmptyString',

    );

    # Results:
    my $Bot = $RegenerateSecurityTokenResponse->Bot;

    # Returns a L<Paws::Chime::RegenerateSecurityTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/RegenerateSecurityToken>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 B<REQUIRED> BotId => Str

The bot ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegenerateSecurityToken in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

