
package Paws::EC2::DescribeAvailabilityZonesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_AvailabilityZone/;
  has AvailabilityZones => (is => 'ro', isa => ArrayRef[EC2_AvailabilityZone]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'AvailabilityZones' => 'availabilityZoneInfo'
                     },
  'types' => {
               'AvailabilityZones' => {
                                        'type' => 'ArrayRef[EC2_AvailabilityZone]',
                                        'class' => 'Paws::EC2::AvailabilityZone'
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

Paws::EC2::DescribeAvailabilityZonesResult

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[EC2_AvailabilityZone]

Information about the Availability Zones.


=head2 _request_id => Str


=cut

