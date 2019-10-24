
package Paws::Robomaker::CreateFleetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Robomaker::Types qw/Robomaker_TagMap/;
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => Robomaker_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Tags' => {
                           'class' => 'Paws::Robomaker::TagMap',
                           'type' => 'Robomaker_TagMap'
                         },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'CreatedAt' => 'createdAt',
                       'Arn' => 'arn',
                       'Tags' => 'tags',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateFleetResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the fleet.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the fleet was created.


=head2 Name => Str

The name of the fleet.


=head2 Tags => Robomaker_TagMap

The list of all tags added to the fleet.


=head2 _request_id => Str


=cut

