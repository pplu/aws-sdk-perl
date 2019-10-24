# Generated from callresult_class.tt

package Paws::ELBv2::SetSubnetsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_AvailabilityZone/;
  has AvailabilityZones => (is => 'ro', isa => ArrayRef[ELBv2_AvailabilityZone]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AvailabilityZones' => {
                                        'class' => 'Paws::ELBv2::AvailabilityZone',
                                        'type' => 'ArrayRef[ELBv2_AvailabilityZone]'
                                      }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::SetSubnetsOutput

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[ELBv2_AvailabilityZone]

Information about the subnet and Availability Zone.


=head2 _request_id => Str


=cut

