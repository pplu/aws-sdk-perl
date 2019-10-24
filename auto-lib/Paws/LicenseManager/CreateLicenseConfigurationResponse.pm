# Generated from json/callresult_class.tt

package Paws::LicenseManager::CreateLicenseConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LicenseManager::Types qw//;
  has LicenseConfigurationArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LicenseConfigurationArn' => {
                                              'type' => 'Str'
                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CreateLicenseConfigurationResponse

=head1 ATTRIBUTES


=head2 LicenseConfigurationArn => Str

ARN of the license configuration object after its creation.


=head2 _request_id => Str


=cut

1;