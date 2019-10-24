# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::CreatePortfolioOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_Tag ServiceCatalog_PortfolioDetail/;
  has PortfolioDetail => (is => 'ro', isa => ServiceCatalog_PortfolioDetail);
  has Tags => (is => 'ro', isa => ArrayRef[ServiceCatalog_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PortfolioDetail' => {
                                      'class' => 'Paws::ServiceCatalog::PortfolioDetail',
                                      'type' => 'ServiceCatalog_PortfolioDetail'
                                    },
               'Tags' => {
                           'class' => 'Paws::ServiceCatalog::Tag',
                           'type' => 'ArrayRef[ServiceCatalog_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreatePortfolioOutput

=head1 ATTRIBUTES


=head2 PortfolioDetail => ServiceCatalog_PortfolioDetail

Information about the portfolio.


=head2 Tags => ArrayRef[ServiceCatalog_Tag]

Information about the tags associated with the portfolio.


=head2 _request_id => Str


=cut

1;