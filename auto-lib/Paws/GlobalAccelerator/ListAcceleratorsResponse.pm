# Generated from json/callresult_class.tt

package Paws::GlobalAccelerator::ListAcceleratorsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GlobalAccelerator::Types qw/GlobalAccelerator_Accelerator/;
  has Accelerators => (is => 'ro', isa => ArrayRef[GlobalAccelerator_Accelerator]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Accelerators' => {
                                   'class' => 'Paws::GlobalAccelerator::Accelerator',
                                   'type' => 'ArrayRef[GlobalAccelerator_Accelerator]'
                                 },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::GlobalAccelerator::ListAcceleratorsResponse

=head1 ATTRIBUTES


=head2 Accelerators => ArrayRef[GlobalAccelerator_Accelerator]

The list of accelerators for a customer account.


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 _request_id => Str


=cut

1;