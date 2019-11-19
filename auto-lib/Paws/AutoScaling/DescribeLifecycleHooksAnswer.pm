# Generated from callresult_class.tt

package Paws::AutoScaling::DescribeLifecycleHooksAnswer;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AutoScaling::Types qw/AutoScaling_LifecycleHook/;
  has LifecycleHooks => (is => 'ro', isa => ArrayRef[AutoScaling_LifecycleHook]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LifecycleHooks' => {
                                     'type' => 'ArrayRef[AutoScaling_LifecycleHook]',
                                     'class' => 'Paws::AutoScaling::LifecycleHook'
                                   }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeLifecycleHooksAnswer

=head1 ATTRIBUTES


=head2 LifecycleHooks => ArrayRef[AutoScaling_LifecycleHook]

The lifecycle hooks for the specified group.


=head2 _request_id => Str


=cut

