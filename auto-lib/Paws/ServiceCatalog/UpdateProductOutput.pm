# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::UpdateProductOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_Tag ServiceCatalog_ProductViewDetail/;
  has ProductViewDetail => (is => 'ro', isa => ServiceCatalog_ProductViewDetail);
  has Tags => (is => 'ro', isa => ArrayRef[ServiceCatalog_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::ServiceCatalog::Tag',
                           'type' => 'ArrayRef[ServiceCatalog_Tag]'
                         },
               'ProductViewDetail' => {
                                        'class' => 'Paws::ServiceCatalog::ProductViewDetail',
                                        'type' => 'ServiceCatalog_ProductViewDetail'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateProductOutput

=head1 ATTRIBUTES


=head2 ProductViewDetail => ServiceCatalog_ProductViewDetail

Information about the product view.


=head2 Tags => ArrayRef[ServiceCatalog_Tag]

Information about the tags associated with the product.


=head2 _request_id => Str


=cut

1;