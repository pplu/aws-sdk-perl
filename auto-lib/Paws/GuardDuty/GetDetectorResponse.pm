
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
               'UpdatedAt' => {
                                'type' => 'Str'
                              },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::GuardDuty::TagMap',
                           'type' => 'GuardDuty_TagMap'
                         },
               'ServiceRole' => {
                                  'type' => 'Str'
                                },
               'FindingPublishingFrequency' => {
                                                 'type' => 'Str'
                                               }
             },
  'NameInRequest' => {
                       'UpdatedAt' => 'updatedAt',
                       'CreatedAt' => 'createdAt',
                       'Status' => 'status',
                       'Tags' => 'tags',
                       'ServiceRole' => 'serviceRole',
                       'FindingPublishingFrequency' => 'findingPublishingFrequency'
                     },
  'IsRequired' => {
                    'Status' => 1,
                    'ServiceRole' => 1
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

