
package Paws::EC2::CreateFleetResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_CreateFleetInstance EC2_CreateFleetError/;
  has Errors => (is => 'ro', isa => ArrayRef[EC2_CreateFleetError]);
  has FleetId => (is => 'ro', isa => Str);
  has Instances => (is => 'ro', isa => ArrayRef[EC2_CreateFleetInstance]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FleetId' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Errors' => {
                             'class' => 'Paws::EC2::CreateFleetError',
                             'type' => 'ArrayRef[EC2_CreateFleetError]'
                           },
               'Instances' => {
                                'class' => 'Paws::EC2::CreateFleetInstance',
                                'type' => 'ArrayRef[EC2_CreateFleetInstance]'
                              }
             },
  'NameInRequest' => {
                       'FleetId' => 'fleetId',
                       'Errors' => 'errorSet',
                       'Instances' => 'fleetInstanceSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateFleetResult

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[EC2_CreateFleetError]

Information about the instances that could not be launched by the
fleet. Valid only when B<Type> is set to C<instant>.


=head2 FleetId => Str

The ID of the EC2 Fleet.


=head2 Instances => ArrayRef[EC2_CreateFleetInstance]

Information about the instances that were launched by the fleet. Valid
only when B<Type> is set to C<instant>.


=head2 _request_id => Str


=cut

