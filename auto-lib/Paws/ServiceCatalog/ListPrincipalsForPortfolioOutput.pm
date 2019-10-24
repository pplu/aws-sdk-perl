# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::ListPrincipalsForPortfolioOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_Principal/;
  has NextPageToken => (is => 'ro', isa => Str);
  has Principals => (is => 'ro', isa => ArrayRef[ServiceCatalog_Principal]);

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
               'Principals' => {
                                 'class' => 'Paws::ServiceCatalog::Principal',
                                 'type' => 'ArrayRef[ServiceCatalog_Principal]'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListPrincipalsForPortfolioOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 Principals => ArrayRef[ServiceCatalog_Principal]

The IAM principals (users or roles) associated with the portfolio.


=head2 _request_id => Str


=cut

1;