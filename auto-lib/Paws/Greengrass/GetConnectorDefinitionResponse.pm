
package Paws::Greengrass::GetConnectorDefinitionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw/Greengrass_Tags/;
  has Arn => (is => 'ro', isa => Str);
  has CreationTimestamp => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has LastUpdatedTimestamp => (is => 'ro', isa => Str);
  has LatestVersion => (is => 'ro', isa => Str);
  has LatestVersionArn => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => Greengrass_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'types' => {
               'CreationTimestamp' => {
                                        'type' => 'Str'
                                      },
               'Tags' => {
                           'type' => 'Greengrass_Tags',
                           'class' => 'Paws::Greengrass::Tags'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LatestVersionArn' => {
                                       'type' => 'Str'
                                     },
               'LastUpdatedTimestamp' => {
                                           'type' => 'Str'
                                         },
               'Id' => {
                         'type' => 'Str'
                       },
               'Arn' => {
                          'type' => 'Str'
                        },
               'LatestVersion' => {
                                    'type' => 'Str'
                                  },
               'Name' => {
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

Paws::Greengrass::GetConnectorDefinitionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the definition.


=head2 CreationTimestamp => Str

The time, in milliseconds since the epoch, when the definition was
created.


=head2 Id => Str

The ID of the definition.


=head2 LastUpdatedTimestamp => Str

The time, in milliseconds since the epoch, when the definition was last
updated.


=head2 LatestVersion => Str

The ID of the latest version associated with the definition.


=head2 LatestVersionArn => Str

The ARN of the latest version associated with the definition.


=head2 Name => Str

The name of the definition.


=head2 Tags => Greengrass_Tags

Tag(s) attached to the resource arn.


=head2 _request_id => Str


=cut

