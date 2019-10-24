# Generated from json/callresult_class.tt

package Paws::LicenseManager::ListResourceInventoryResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LicenseManager::Types qw/LicenseManager_ResourceInventory/;
  has NextToken => (is => 'ro', isa => Str);
  has ResourceInventoryList => (is => 'ro', isa => ArrayRef[LicenseManager_ResourceInventory]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceInventoryList' => {
                                            'class' => 'Paws::LicenseManager::ResourceInventory',
                                            'type' => 'ArrayRef[LicenseManager_ResourceInventory]'
                                          },
               'NextToken' => {
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

Paws::LicenseManager::ListResourceInventoryResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token for the next set of results.


=head2 ResourceInventoryList => ArrayRef[LicenseManager_ResourceInventory]

The detailed list of resources.


=head2 _request_id => Str


=cut

1;