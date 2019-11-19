# Generated from json/callresult_class.tt

package Paws::LicenseManager::ListLicenseConfigurationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LicenseManager::Types qw/LicenseManager_LicenseConfiguration/;
  has LicenseConfigurations => (is => 'ro', isa => ArrayRef[LicenseManager_LicenseConfiguration]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LicenseConfigurations' => {
                                            'class' => 'Paws::LicenseManager::LicenseConfiguration',
                                            'type' => 'ArrayRef[LicenseManager_LicenseConfiguration]'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListLicenseConfigurationsResponse

=head1 ATTRIBUTES


=head2 LicenseConfigurations => ArrayRef[LicenseManager_LicenseConfiguration]

Array of license configuration objects.


=head2 NextToken => Str

Token for the next set of results.


=head2 _request_id => Str


=cut

1;