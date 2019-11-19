# Generated from json/callresult_class.tt

package Paws::GlobalAccelerator::CreateListenerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GlobalAccelerator::Types qw/GlobalAccelerator_Listener/;
  has Listener => (is => 'ro', isa => GlobalAccelerator_Listener);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Listener' => {
                               'class' => 'Paws::GlobalAccelerator::Listener',
                               'type' => 'GlobalAccelerator_Listener'
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

Paws::GlobalAccelerator::CreateListenerResponse

=head1 ATTRIBUTES


=head2 Listener => GlobalAccelerator_Listener

The listener that you've created.


=head2 _request_id => Str


=cut

1;