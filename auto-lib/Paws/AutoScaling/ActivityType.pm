# Generated from callresult_class.tt

package Paws::AutoScaling::ActivityType;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AutoScaling::Types qw/AutoScaling_Activity/;
  has Activity => (is => 'ro', isa => AutoScaling_Activity);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Activity' => {
                               'class' => 'Paws::AutoScaling::Activity',
                               'type' => 'AutoScaling_Activity'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::ActivityType

=head1 ATTRIBUTES


=head2 Activity => AutoScaling_Activity

A scaling activity.


=head2 _request_id => Str


=cut

