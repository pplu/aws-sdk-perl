# Generated from json/callresult_class.tt

package Paws::GlobalAccelerator::UpdateAcceleratorAttributesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GlobalAccelerator::Types qw/GlobalAccelerator_AcceleratorAttributes/;
  has AcceleratorAttributes => (is => 'ro', isa => GlobalAccelerator_AcceleratorAttributes);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AcceleratorAttributes' => {
                                            'type' => 'GlobalAccelerator_AcceleratorAttributes',
                                            'class' => 'Paws::GlobalAccelerator::AcceleratorAttributes'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::UpdateAcceleratorAttributesResponse

=head1 ATTRIBUTES


=head2 AcceleratorAttributes => GlobalAccelerator_AcceleratorAttributes

Updated attributes for the accelerator.


=head2 _request_id => Str


=cut

1;