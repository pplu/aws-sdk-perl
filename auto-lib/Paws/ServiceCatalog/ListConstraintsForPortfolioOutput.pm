# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::ListConstraintsForPortfolioOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ConstraintDetail/;
  has ConstraintDetails => (is => 'ro', isa => ArrayRef[ServiceCatalog_ConstraintDetail]);
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
               'ConstraintDetails' => {
                                        'class' => 'Paws::ServiceCatalog::ConstraintDetail',
                                        'type' => 'ArrayRef[ServiceCatalog_ConstraintDetail]'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListConstraintsForPortfolioOutput

=head1 ATTRIBUTES


=head2 ConstraintDetails => ArrayRef[ServiceCatalog_ConstraintDetail]

Information about the constraints.


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 _request_id => Str


=cut

1;