# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::SearchProvisionedProductsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ProvisionedProductAttribute/;
  has NextPageToken => (is => 'ro', isa => Str);
  has ProvisionedProducts => (is => 'ro', isa => ArrayRef[ServiceCatalog_ProvisionedProductAttribute]);
  has TotalResultsCount => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'ProvisionedProducts' => {
                                          'class' => 'Paws::ServiceCatalog::ProvisionedProductAttribute',
                                          'type' => 'ArrayRef[ServiceCatalog_ProvisionedProductAttribute]'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TotalResultsCount' => {
                                        'type' => 'Int'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::SearchProvisionedProductsOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 ProvisionedProducts => ArrayRef[ServiceCatalog_ProvisionedProductAttribute]

Information about the provisioned products.


=head2 TotalResultsCount => Int

The number of provisioned products found.


=head2 _request_id => Str


=cut

1;