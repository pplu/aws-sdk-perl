# Generated from json/callresult_class.tt

package Paws::LicenseManager::GetLicenseConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Bool Undef/;
  use Paws::LicenseManager::Types qw/LicenseManager_ConsumedLicenseSummary LicenseManager_Tag LicenseManager_ManagedResourceSummary/;
  has ConsumedLicenses => (is => 'ro', isa => Int);
  has ConsumedLicenseSummaryList => (is => 'ro', isa => ArrayRef[LicenseManager_ConsumedLicenseSummary]);
  has Description => (is => 'ro', isa => Str);
  has LicenseConfigurationArn => (is => 'ro', isa => Str);
  has LicenseConfigurationId => (is => 'ro', isa => Str);
  has LicenseCount => (is => 'ro', isa => Int);
  has LicenseCountHardLimit => (is => 'ro', isa => Bool);
  has LicenseCountingType => (is => 'ro', isa => Str);
  has LicenseRules => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ManagedResourceSummaryList => (is => 'ro', isa => ArrayRef[LicenseManager_ManagedResourceSummary]);
  has Name => (is => 'ro', isa => Str);
  has OwnerAccountId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[LicenseManager_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LicenseConfigurationId' => {
                                             'type' => 'Str'
                                           },
               'Tags' => {
                           'type' => 'ArrayRef[LicenseManager_Tag]',
                           'class' => 'Paws::LicenseManager::Tag'
                         },
               'ManagedResourceSummaryList' => {
                                                 'class' => 'Paws::LicenseManager::ManagedResourceSummary',
                                                 'type' => 'ArrayRef[LicenseManager_ManagedResourceSummary]'
                                               },
               'ConsumedLicenseSummaryList' => {
                                                 'class' => 'Paws::LicenseManager::ConsumedLicenseSummary',
                                                 'type' => 'ArrayRef[LicenseManager_ConsumedLicenseSummary]'
                                               },
               'Description' => {
                                  'type' => 'Str'
                                },
               'OwnerAccountId' => {
                                     'type' => 'Str'
                                   },
               'LicenseCountingType' => {
                                          'type' => 'Str'
                                        },
               'LicenseCountHardLimit' => {
                                            'type' => 'Bool'
                                          },
               'LicenseConfigurationArn' => {
                                              'type' => 'Str'
                                            },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'LicenseRules' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 },
               'LicenseCount' => {
                                   'type' => 'Int'
                                 },
               'ConsumedLicenses' => {
                                       'type' => 'Int'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::GetLicenseConfigurationResponse

=head1 ATTRIBUTES


=head2 ConsumedLicenses => Int

Number of licenses assigned to resources.


=head2 ConsumedLicenseSummaryList => ArrayRef[LicenseManager_ConsumedLicenseSummary]

List of summaries for consumed licenses used by various resources.


=head2 Description => Str

Description of the license configuration.


=head2 LicenseConfigurationArn => Str

ARN of the license configuration requested.


=head2 LicenseConfigurationId => Str

Unique ID for the license configuration.


=head2 LicenseCount => Int

Number of available licenses.


=head2 LicenseCountHardLimit => Bool

Sets the number of available licenses as a hard limit.


=head2 LicenseCountingType => Str

Dimension on which the licenses are counted (for example, instances,
cores, sockets, or VCPUs).

Valid values are: C<"vCPU">, C<"Instance">, C<"Core">, C<"Socket">
=head2 LicenseRules => ArrayRef[Str|Undef]

List of flexible text strings designating license rules.


=head2 ManagedResourceSummaryList => ArrayRef[LicenseManager_ManagedResourceSummary]

List of summaries of managed resources.


=head2 Name => Str

Name of the license configuration.


=head2 OwnerAccountId => Str

Owner account ID for the license configuration.


=head2 Status => Str

License configuration status (active, etc.).


=head2 Tags => ArrayRef[LicenseManager_Tag]

List of tags attached to the license configuration.


=head2 _request_id => Str


=cut

1;