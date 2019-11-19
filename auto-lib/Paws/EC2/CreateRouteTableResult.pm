
package Paws::EC2::CreateRouteTableResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_RouteTable/;
  has RouteTable => (is => 'ro', isa => EC2_RouteTable);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'RouteTable' => 'routeTable'
                     },
  'types' => {
               'RouteTable' => {
                                 'class' => 'Paws::EC2::RouteTable',
                                 'type' => 'EC2_RouteTable'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateRouteTableResult

=head1 ATTRIBUTES


=head2 RouteTable => EC2_RouteTable

Information about the route table.


=head2 _request_id => Str


=cut

