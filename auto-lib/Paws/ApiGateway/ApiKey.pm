
package Paws::ApiGateway::ApiKey;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::ApiGateway::Types qw/ApiGateway_MapOfStringToString/;
  has CreatedDate => (is => 'ro', isa => Str);
  has CustomerId => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Enabled => (is => 'ro', isa => Bool);
  has Id => (is => 'ro', isa => Str);
  has LastUpdatedDate => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has StageKeys => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Tags => (is => 'ro', isa => ApiGateway_MapOfStringToString);
  has Value => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'Str'
                          },
               'Id' => {
                         'type' => 'Str'
                       },
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'LastUpdatedDate' => {
                                      'type' => 'Str'
                                    },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CustomerId' => {
                                 'type' => 'Str'
                               },
               'Tags' => {
                           'class' => 'Paws::ApiGateway::MapOfStringToString',
                           'type' => 'ApiGateway_MapOfStringToString'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'StageKeys' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              }
             },
  'NameInRequest' => {
                       'Value' => 'value',
                       'Id' => 'id',
                       'Enabled' => 'enabled',
                       'LastUpdatedDate' => 'lastUpdatedDate',
                       'CreatedDate' => 'createdDate',
                       'CustomerId' => 'customerId',
                       'Tags' => 'tags',
                       'Description' => 'description',
                       'Name' => 'name',
                       'StageKeys' => 'stageKeys'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ApiKey

=head1 ATTRIBUTES


=head2 CreatedDate => Str

The timestamp when the API Key was created.


=head2 CustomerId => Str

An AWS Marketplace customer identifier , when integrating with the AWS
SaaS Marketplace.


=head2 Description => Str

The description of the API Key.


=head2 Enabled => Bool

Specifies whether the API Key can be used by callers.


=head2 Id => Str

The identifier of the API Key.


=head2 LastUpdatedDate => Str

The timestamp when the API Key was last updated.


=head2 Name => Str

The name of the API Key.


=head2 StageKeys => ArrayRef[Str|Undef]

A list of Stage resources that are associated with the ApiKey resource.


=head2 Tags => ApiGateway_MapOfStringToString

The collection of tags. Each tag element is associated with a given
resource.


=head2 Value => Str

The value of the API Key.


=head2 _request_id => Str


=cut

