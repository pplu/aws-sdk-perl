# Generated from callresult_class.tt

package Paws::AutoScaling::DescribeLifecycleHookTypesAnswer;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::AutoScaling::Types qw//;
  has LifecycleHookTypes => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LifecycleHookTypes' => {
                                         'type' => 'ArrayRef[Str|Undef]'
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

Paws::AutoScaling::DescribeLifecycleHookTypesAnswer

=head1 ATTRIBUTES


=head2 LifecycleHookTypes => ArrayRef[Str|Undef]

The lifecycle hook types.


=head2 _request_id => Str


=cut

