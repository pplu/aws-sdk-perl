
package Paws::LexModels::PutBotAliasResponse;
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
  'NameInRequest' => {
                       'Name' => 'name',
                       'LastUpdatedDate' => 'lastUpdatedDate',
                       'BotName' => 'botName',
                       'Checksum' => 'checksum',
                       'BotVersion' => 'botVersion',
                       'Description' => 'description',
                       'CreatedDate' => 'createdDate'
                     },
  'types' => {
               'BotName' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'LastUpdatedDate' => {
                                      'type' => 'Str'
                                    },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'Description' => {
                                  'type' => 'Str'
                                },
               'BotVersion' => {
                                 'type' => 'Str'
                               },
               'Checksum' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::PutBotAliasResponse

=head1 ATTRIBUTES


=head2 BotName => Str

The name of the bot that the alias points to.


=head2 BotVersion => Str

The version of the bot that the alias points to.


=head2 Checksum => Str

The checksum for the current version of the alias.


=head2 CreatedDate => Str

The date that the bot alias was created.


=head2 Description => Str

A description of the alias.


=head2 LastUpdatedDate => Str

The date that the bot alias was updated. When you create a resource,
the creation date and the last updated date are the same.


=head2 Name => Str

The name of the alias.


=head2 _request_id => Str


=cut

