# Generated from json/callresult_class.tt

package Paws::LicenseManager::ListLicenseSpecificationsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LicenseManager::Types qw/LicenseManager_LicenseSpecification/;
  has LicenseSpecifications => (is => 'ro', isa => ArrayRef[LicenseManager_LicenseSpecification]);
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
               'LicenseSpecifications' => {
                                            'class' => 'Paws::LicenseManager::LicenseSpecification',
                                            'type' => 'ArrayRef[LicenseManager_LicenseSpecification]'
                                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListLicenseSpecificationsForResourceResponse

=head1 ATTRIBUTES


=head2 LicenseSpecifications => ArrayRef[LicenseManager_LicenseSpecification]

License configurations associated with a resource.


=head2 NextToken => Str

Token for the next set of results.


=head2 _request_id => Str


=cut

1;