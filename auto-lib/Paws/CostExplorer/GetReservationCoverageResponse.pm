# Generated from json/callresult_class.tt

package Paws::CostExplorer::GetReservationCoverageResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CostExplorer::Types qw/CostExplorer_Coverage CostExplorer_CoverageByTime/;
  has CoveragesByTime => (is => 'ro', isa => ArrayRef[CostExplorer_CoverageByTime], required => 1);
  has NextPageToken => (is => 'ro', isa => Str);
  has Total => (is => 'ro', isa => CostExplorer_Coverage);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'Total' => {
                            'class' => 'Paws::CostExplorer::Coverage',
                            'type' => 'CostExplorer_Coverage'
                          },
               'CoveragesByTime' => {
                                      'type' => 'ArrayRef[CostExplorer_CoverageByTime]',
                                      'class' => 'Paws::CostExplorer::CoverageByTime'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'CoveragesByTime' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetReservationCoverageResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CoveragesByTime => ArrayRef[CostExplorer_CoverageByTime]

The amount of time that your reservations covered.


=head2 NextPageToken => Str

The token for the next set of retrievable results. AWS provides the
token when the response from a previous call has more results than the
maximum page size.


=head2 Total => CostExplorer_Coverage

The total amount of instance usage that a reservation covered.


=head2 _request_id => Str


=cut

1;