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
               'Processes' => {
                                'type' => 'ArrayRef[AutoScaling_ProcessType]',
                                'class' => 'Paws::AutoScaling::ProcessType'
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

Paws::AutoScaling::ProcessesType

=head1 ATTRIBUTES


=head2 Processes => ArrayRef[AutoScaling_ProcessType]

The names of the process types.


=head2 _request_id => Str


=cut

