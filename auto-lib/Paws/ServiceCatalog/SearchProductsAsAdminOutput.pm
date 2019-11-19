# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::SearchProductsAsAdminOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ProductViewDetail/;
  has NextPageToken => (is => 'ro', isa => Str);
  has ProductViewDetails => (is => 'ro', isa => ArrayRef[ServiceCatalog_ProductViewDetail]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProductViewDetails' => {
                                         'type' => 'ArrayRef[ServiceCatalog_ProductViewDetail]',
                                         'class' => 'Paws::ServiceCatalog::ProductViewDetail'
                                       },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::SearchProductsAsAdminOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 ProductViewDetails => ArrayRef[ServiceCatalog_ProductViewDetail]

Information about the product views.


=head2 _request_id => Str


=cut

1;