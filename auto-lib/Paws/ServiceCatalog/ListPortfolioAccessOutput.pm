# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::ListPortfolioAccessOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ServiceCatalog::Types qw//;
  has AccountIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextPageToken => (is => 'ro', isa => Str);

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
               'AccountIds' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListPortfolioAccessOutput

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

Information about the AWS accounts with access to the portfolio.


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 _request_id => Str


=cut

1;