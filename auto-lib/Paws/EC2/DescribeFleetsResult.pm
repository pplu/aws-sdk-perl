
package Paws::EC2::DescribeFleetsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_FleetData/;
  has Fleets => (is => 'ro', isa => ArrayRef[EC2_FleetData]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Fleets' => {
                             'class' => 'Paws::EC2::FleetData',
                             'type' => 'ArrayRef[EC2_FleetData]'
                           }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Fleets' => 'fleetSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFleetsResult

=head1 ATTRIBUTES


=head2 Fleets => ArrayRef[EC2_FleetData]

Information about the EC2 Fleets.


=head2 NextToken => Str

The token for the next set of results.


=head2 _request_id => Str


=cut

