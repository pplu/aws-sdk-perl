# Generated from json/callresult_class.tt

package Paws::GlobalAccelerator::DescribeAcceleratorAttributesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GlobalAccelerator::Types qw/GlobalAccelerator_AcceleratorAttributes/;
  has AcceleratorAttributes => (is => 'ro', isa => GlobalAccelerator_AcceleratorAttributes);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AcceleratorAttributes' => {
                                            'type' => 'GlobalAccelerator_AcceleratorAttributes',
                                            'class' => 'Paws::GlobalAccelerator::AcceleratorAttributes'
                                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::DescribeAcceleratorAttributesResponse

=head1 ATTRIBUTES


=head2 AcceleratorAttributes => GlobalAccelerator_AcceleratorAttributes

The attributes of the accelerator.


=head2 _request_id => Str


=cut

1;