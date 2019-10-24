# Generated from json/callresult_class.tt

package Paws::GlobalAccelerator::ListListenersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GlobalAccelerator::Types qw/GlobalAccelerator_Listener/;
  has Listeners => (is => 'ro', isa => ArrayRef[GlobalAccelerator_Listener]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Listeners' => {
                                'class' => 'Paws::GlobalAccelerator::Listener',
                                'type' => 'ArrayRef[GlobalAccelerator_Listener]'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListListenersResponse

=head1 ATTRIBUTES


=head2 Listeners => ArrayRef[GlobalAccelerator_Listener]

The list of listeners for an accelerator.


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 _request_id => Str


=cut

1;