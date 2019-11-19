# Generated from json/callresult_class.tt

package Paws::CostExplorer::GetReservationUtilizationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CostExplorer::Types qw/CostExplorer_ReservationAggregates CostExplorer_UtilizationByTime/;
  has NextPageToken => (is => 'ro', isa => Str);
  has Total => (is => 'ro', isa => CostExplorer_ReservationAggregates);
  has UtilizationsByTime => (is => 'ro', isa => ArrayRef[CostExplorer_UtilizationByTime], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'UtilizationsByTime' => 1
                  },
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'Total' => {
                            'class' => 'Paws::CostExplorer::ReservationAggregates',
                            'type' => 'CostExplorer_ReservationAggregates'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UtilizationsByTime' => {
                                         'class' => 'Paws::CostExplorer::UtilizationByTime',
                                         'type' => 'ArrayRef[CostExplorer_UtilizationByTime]'
                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetReservationUtilizationResponse

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The token for the next set of retrievable results. AWS provides the
token when the response from a previous call has more results than the
maximum page size.


=head2 Total => CostExplorer_ReservationAggregates

The total amount of time that you used your RIs.


=head2 B<REQUIRED> UtilizationsByTime => ArrayRef[CostExplorer_UtilizationByTime]

The amount of time that you used your RIs.


=head2 _request_id => Str


=cut

1;