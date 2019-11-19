
package Paws::LexModels::DeleteBotChannelAssociation;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LexModels::Types qw//;
  has BotAlias => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BotName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteBotChannelAssociation');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/bots/{botName}/aliases/{aliasName}/channels/{name}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Name' => 1,
                    'BotAlias' => 1,
                    'BotName' => 1
                  },
  'types' => {
               'BotName' => {
                              'type' => 'Str'
                            },
               'BotAlias' => {
                               'type' => 'Str'
                             },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'ParamInURI' => {
                    'BotName' => 'botName',
                    'Name' => 'name',
                    'BotAlias' => 'aliasName'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::DeleteBotChannelAssociation - Arguments for method DeleteBotChannelAssociation on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBotChannelAssociation on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method DeleteBotChannelAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBotChannelAssociation.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    $models . lex->DeleteBotChannelAssociation(
      BotAlias => 'MyAliasName',
      BotName  => 'MyBotName',
      Name     => 'MyBotChannelName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/DeleteBotChannelAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotAlias => Str

An alias that points to the specific version of the Amazon Lex bot to
which this association is being made.



=head2 B<REQUIRED> BotName => Str

The name of the Amazon Lex bot.



=head2 B<REQUIRED> Name => Str

The name of the association. The name is case sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBotChannelAssociation in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

