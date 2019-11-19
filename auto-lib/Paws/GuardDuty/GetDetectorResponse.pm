
package Paws::GuardDuty::GetDetectorResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw/GuardDuty_TagMap/;
  has CreatedAt => (is => 'ro', isa => Str);
  has FindingPublishingFrequency => (is => 'ro', isa => Str);
  has ServiceRole => (is => 'ro', isa => Str, required => 1);
  has Status => (is => 'ro', isa => Str, required => 1);
  has Tags => (is => 'ro', isa => GuardDuty_TagMap);
  has UpdatedAt => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'GuardDuty_TagMap',
                           'class' => 'Paws::GuardDuty::TagMap'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'ServiceRole' => {
                                  'type' => 'Str'
                                },
               'UpdatedAt' => {
                                'type' => 'Str'
                              },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'FindingPublishingFrequency' => {
                                                 'type' => 'Str'
                                               }
             },
  'IsRequired' => {
                    'ServiceRole' => 1,
                    'Status' => 1
                  },
  'NameInRequest' => {
                       'UpdatedAt' => 'updatedAt',
                       'CreatedAt' => 'createdAt',
                       'ServiceRole' => 'serviceRole',
                       'FindingPublishingFrequency' => 'findingPublishingFrequency',
                       'Status' => 'status',
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetDetectorResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

Detector creation timestamp.


=head2 FindingPublishingFrequency => Str

Finding publishing frequency.

Valid values are: C<"FIFTEEN_MINUTES">, C<"ONE_HOUR">, C<"SIX_HOURS">
=head2 B<REQUIRED> ServiceRole => Str

The GuardDuty service role.


=head2 B<REQUIRED> Status => Str

The detector status.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 Tags => GuardDuty_TagMap

The tags of the detector resource.


=head2 UpdatedAt => Str

Detector last update timestamp.


=head2 _request_id => Str


=cut

