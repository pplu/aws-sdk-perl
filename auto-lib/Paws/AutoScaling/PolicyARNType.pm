# Generated from callresult_class.tt

package Paws::AutoScaling::PolicyARNType;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AutoScaling::Types qw/AutoScaling_Alarm/;
  has Alarms => (is => 'ro', isa => ArrayRef[AutoScaling_Alarm]);
  has PolicyARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PolicyARN' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Alarms' => {
                             'class' => 'Paws::AutoScaling::Alarm',
                             'type' => 'ArrayRef[AutoScaling_Alarm]'
                           }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::PolicyARNType

=head1 ATTRIBUTES


=head2 Alarms => ArrayRef[AutoScaling_Alarm]

The CloudWatch alarms created for the target tracking scaling policy.


=head2 PolicyARN => Str

The Amazon Resource Name (ARN) of the policy.


=head2 _request_id => Str


=cut

