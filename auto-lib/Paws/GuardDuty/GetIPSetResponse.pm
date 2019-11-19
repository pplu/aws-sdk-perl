
package Paws::GuardDuty::GetIPSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw/GuardDuty_TagMap/;
  has Format => (is => 'ro', isa => Str, required => 1);
  has Location => (is => 'ro', isa => Str, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);
  has Status => (is => 'ro', isa => Str, required => 1);
  has Tags => (is => 'ro', isa => GuardDuty_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Format' => 1,
                    'Name' => 1,
                    'Status' => 1,
                    'Location' => 1
                  },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'Location' => 'location',
                       'Status' => 'status',
                       'Name' => 'name',
                       'Format' => 'format'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'Tags' => {
                           'class' => 'Paws::GuardDuty::TagMap',
                           'type' => 'GuardDuty_TagMap'
                         },
               'Name' => {
                           'type' => 'Str'
                         },
               'Location' => {
                               'type' => 'Str'
                             },
               'Format' => {
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

Paws::GuardDuty::GetIPSetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Format => Str

The format of the file that contains the IPSet.

Valid values are: C<"TXT">, C<"STIX">, C<"OTX_CSV">, C<"ALIEN_VAULT">, C<"PROOF_POINT">, C<"FIRE_EYE">
=head2 B<REQUIRED> Location => Str

The URI of the file that contains the IPSet. For example
(https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)


=head2 B<REQUIRED> Name => Str

The user friendly name for the IPSet.


=head2 B<REQUIRED> Status => Str

The status of ipSet file uploaded.

Valid values are: C<"INACTIVE">, C<"ACTIVATING">, C<"ACTIVE">, C<"DEACTIVATING">, C<"ERROR">, C<"DELETE_PENDING">, C<"DELETED">
=head2 Tags => GuardDuty_TagMap

The tags of the IP set resource.


=head2 _request_id => Str


=cut

