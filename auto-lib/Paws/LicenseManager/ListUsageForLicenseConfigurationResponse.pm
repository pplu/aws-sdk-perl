# Generated from json/callresult_class.tt

package Paws::LicenseManager::ListUsageForLicenseConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LicenseManager::Types qw/LicenseManager_LicenseConfigurationUsage/;
  has LicenseConfigurationUsageList => (is => 'ro', isa => ArrayRef[LicenseManager_LicenseConfigurationUsage]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LicenseConfigurationUsageList' => {
                                                    'class' => 'Paws::LicenseManager::LicenseConfigurationUsage',
                                                    'type' => 'ArrayRef[LicenseManager_LicenseConfigurationUsage]'
                                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListUsageForLicenseConfigurationResponse

=head1 ATTRIBUTES


=head2 LicenseConfigurationUsageList => ArrayRef[LicenseManager_LicenseConfigurationUsage]

An array of C<LicenseConfigurationUsage> objects.


=head2 NextToken => Str

Token for the next set of results.


=head2 _request_id => Str


=cut

1;