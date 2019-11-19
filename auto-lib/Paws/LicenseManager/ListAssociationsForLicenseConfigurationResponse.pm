# Generated from json/callresult_class.tt

package Paws::LicenseManager::ListAssociationsForLicenseConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LicenseManager::Types qw/LicenseManager_LicenseConfigurationAssociation/;
  has LicenseConfigurationAssociations => (is => 'ro', isa => ArrayRef[LicenseManager_LicenseConfigurationAssociation]);
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
               'LicenseConfigurationAssociations' => {
                                                       'type' => 'ArrayRef[LicenseManager_LicenseConfigurationAssociation]',
                                                       'class' => 'Paws::LicenseManager::LicenseConfigurationAssociation'
                                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListAssociationsForLicenseConfigurationResponse

=head1 ATTRIBUTES


=head2 LicenseConfigurationAssociations => ArrayRef[LicenseManager_LicenseConfigurationAssociation]

Lists association objects for the license configuration, each
containing the association time, number of consumed licenses, resource
ARN, resource ID, account ID that owns the resource, resource size, and
resource type.


=head2 NextToken => Str

Token for the next set of results.


=head2 _request_id => Str


=cut

1;