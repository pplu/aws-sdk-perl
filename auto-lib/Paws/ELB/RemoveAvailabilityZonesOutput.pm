# Generated from callresult_class.tt

package Paws::ELB::RemoveAvailabilityZonesOutput;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::ELB::Types qw//;
  has AvailabilityZones => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AvailabilityZones' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::RemoveAvailabilityZonesOutput

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

The remaining Availability Zones for the load balancer.


=head2 _request_id => Str


=cut

