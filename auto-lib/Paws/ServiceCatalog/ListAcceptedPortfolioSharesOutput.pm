# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::ListAcceptedPortfolioSharesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_PortfolioDetail/;
  has NextPageToken => (is => 'ro', isa => Str);
  has PortfolioDetails => (is => 'ro', isa => ArrayRef[ServiceCatalog_PortfolioDetail]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PortfolioDetails' => {
                                       'type' => 'ArrayRef[ServiceCatalog_PortfolioDetail]',
                                       'class' => 'Paws::ServiceCatalog::PortfolioDetail'
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

Paws::ServiceCatalog::ListAcceptedPortfolioSharesOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 PortfolioDetails => ArrayRef[ServiceCatalog_PortfolioDetail]

Information about the portfolios.


=head2 _request_id => Str


=cut

1;