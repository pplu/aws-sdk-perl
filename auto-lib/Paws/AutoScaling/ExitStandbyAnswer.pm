# Generated from callresult_class.tt

package Paws::AutoScaling::ExitStandbyAnswer;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AutoScaling::Types qw/AutoScaling_Activity/;
  has Activities => (is => 'ro', isa => ArrayRef[AutoScaling_Activity]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Activities' => {
                                 'class' => 'Paws::AutoScaling::Activity',
                                 'type' => 'ArrayRef[AutoScaling_Activity]'
                               }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::ExitStandbyAnswer

=head1 ATTRIBUTES


=head2 Activities => ArrayRef[AutoScaling_Activity]

The activities related to moving instances out of C<Standby> mode.


=head2 _request_id => Str


=cut

