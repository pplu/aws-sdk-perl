# Generated from callresult_class.tt

package Paws::AutoScaling::ProcessesType;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AutoScaling::Types qw/AutoScaling_ProcessType/;
  has Processes => (is => 'ro', isa => ArrayRef[AutoScaling_ProcessType]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Processes' => {
                                'class' => 'Paws::AutoScaling::ProcessType',
                                'type' => 'ArrayRef[AutoScaling_ProcessType]'
                              }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::ProcessesType

=head1 ATTRIBUTES


=head2 Processes => ArrayRef[AutoScaling_ProcessType]

The names of the process types.


=head2 _request_id => Str


=cut

