
package Paws::EC2::DescribeFleetInstancesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ActiveInstance/;
  has ActiveInstances => (is => 'ro', isa => ArrayRef[EC2_ActiveInstance]);
  has FleetId => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'FleetId' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ActiveInstances' => {
                                      'class' => 'Paws::EC2::ActiveInstance',
                                      'type' => 'ArrayRef[EC2_ActiveInstance]'
                                    }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'FleetId' => 'fleetId',
                       'ActiveInstances' => 'activeInstanceSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFleetInstancesResult

=head1 ATTRIBUTES


=head2 ActiveInstances => ArrayRef[EC2_ActiveInstance]

The running instances. This list is refreshed periodically and might be
out of date.


=head2 FleetId => Str

The ID of the EC2 Fleet.


=head2 NextToken => Str

The token for the next set of results.


=head2 _request_id => Str


=cut

