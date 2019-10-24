# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::ScanProvisionedProductsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ProvisionedProductDetail/;
  has NextPageToken => (is => 'ro', isa => Str);
  has ProvisionedProducts => (is => 'ro', isa => ArrayRef[ServiceCatalog_ProvisionedProductDetail]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProvisionedProducts' => {
                                          'class' => 'Paws::ServiceCatalog::ProvisionedProductDetail',
                                          'type' => 'ArrayRef[ServiceCatalog_ProvisionedProductDetail]'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ScanProvisionedProductsOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 ProvisionedProducts => ArrayRef[ServiceCatalog_ProvisionedProductDetail]

Information about the provisioned products.


=head2 _request_id => Str


=cut

1;