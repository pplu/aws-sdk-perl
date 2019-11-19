
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
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'Arn' => 'arn',
                       'CreatedAt' => 'createdAt',
                       'Name' => 'name'
                     },
  'types' => {
               'Arn' => {
                          'type' => 'Str'
                        },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Name' => {
                           'type' => 'Str'
                         },
               'Tags' => {
                           'type' => 'Robomaker_TagMap',
                           'class' => 'Paws::Robomaker::TagMap'
                         },
               '_request_id' => {
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

