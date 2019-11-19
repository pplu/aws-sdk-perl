
package Paws::LexModels::GetBotAliasResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LexModels::Types qw//;
  has BotName => (is => 'ro', isa => Str);
  has BotVersion => (is => 'ro', isa => Str);
  has Checksum => (is => 'ro', isa => Str);
  has CreatedDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has LastUpdatedDate => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BotName' => {
                              'type' => 'Str'
                            },
               'Name' => {
                           'type' => 'Str'
                         },
               'LastUpdatedDate' => {
                                      'type' => 'Str'
                                    },
               'Description' => {
                                  'type' => 'Str'
                                },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'Checksum' => {
                               'type' => 'Str'
                             },
               'BotVersion' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'CreatedDate' => 'createdDate',
                       'Description' => 'description',
                       'BotVersion' => 'botVersion',
                       'Checksum' => 'checksum',
                       'BotName' => 'botName',
                       'Name' => 'name',
                       'LastUpdatedDate' => 'lastUpdatedDate'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBotAliasResponse

=head1 ATTRIBUTES


=head2 BotName => Str

The name of the bot that the alias points to.


=head2 BotVersion => Str

The version of the bot that the alias points to.


=head2 Checksum => Str

Checksum of the bot alias.


=head2 CreatedDate => Str

The date that the bot alias was created.


=head2 Description => Str

A description of the bot alias.


=head2 LastUpdatedDate => Str

The date that the bot alias was updated. When you create a resource,
the creation date and the last updated date are the same.


=head2 Name => Str

The name of the bot alias.


=head2 _request_id => Str


=cut

