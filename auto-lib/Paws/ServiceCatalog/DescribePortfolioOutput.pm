# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::DescribePortfolioOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_BudgetDetail ServiceCatalog_Tag ServiceCatalog_PortfolioDetail ServiceCatalog_TagOptionDetail/;
  has Budgets => (is => 'ro', isa => ArrayRef[ServiceCatalog_BudgetDetail]);
  has PortfolioDetail => (is => 'ro', isa => ServiceCatalog_PortfolioDetail);
  has TagOptions => (is => 'ro', isa => ArrayRef[ServiceCatalog_TagOptionDetail]);
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
                         },
               'Budgets' => {
                              'class' => 'Paws::ServiceCatalog::BudgetDetail',
                              'type' => 'ArrayRef[ServiceCatalog_BudgetDetail]'
                            },
               'TagOptions' => {
                                 'class' => 'Paws::ServiceCatalog::TagOptionDetail',
                                 'type' => 'ArrayRef[ServiceCatalog_TagOptionDetail]'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribePortfolioOutput

=head1 ATTRIBUTES


=head2 Budgets => ArrayRef[ServiceCatalog_BudgetDetail]

Information about the associated budgets.


=head2 PortfolioDetail => ServiceCatalog_PortfolioDetail

Information about the portfolio.


=head2 TagOptions => ArrayRef[ServiceCatalog_TagOptionDetail]

Information about the TagOptions associated with the portfolio.


=head2 Tags => ArrayRef[ServiceCatalog_Tag]

Information about the tags associated with the portfolio.


=head2 _request_id => Str


=cut

1;