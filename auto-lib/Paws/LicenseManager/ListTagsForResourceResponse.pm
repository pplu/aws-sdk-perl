# Generated from json/callresult_class.tt

package Paws::LicenseManager::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LicenseManager::Types qw/LicenseManager_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[LicenseManager_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::LicenseManager::Tag',
                           'type' => 'ArrayRef[LicenseManager_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[LicenseManager_Tag]

List of tags attached to the resource.


=head2 _request_id => Str


=cut

1;