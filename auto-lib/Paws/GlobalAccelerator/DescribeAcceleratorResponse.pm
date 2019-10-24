# Generated from json/callresult_class.tt

package Paws::GlobalAccelerator::DescribeAcceleratorResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GlobalAccelerator::Types qw/GlobalAccelerator_Accelerator/;
  has Accelerator => (is => 'ro', isa => GlobalAccelerator_Accelerator);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Accelerator' => {
                                  'class' => 'Paws::GlobalAccelerator::Accelerator',
                                  'type' => 'GlobalAccelerator_Accelerator'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::DescribeAcceleratorResponse

=head1 ATTRIBUTES


=head2 Accelerator => GlobalAccelerator_Accelerator

The description of the accelerator.


=head2 _request_id => Str


=cut

1;