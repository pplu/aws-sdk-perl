# Generated from json/callresult_class.tt

package Paws::CloudHSM::ListAvailableZonesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CloudHSM::Types qw//;
  has AZList => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AZList' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::ListAvailableZonesResponse

=head1 ATTRIBUTES


=head2 AZList => ArrayRef[Str|Undef]

The list of Availability Zones that have available AWS CloudHSM
capacity.


=head2 _request_id => Str


=cut

1;