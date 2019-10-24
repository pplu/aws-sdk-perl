# Generated from json/callresult_class.tt

package Paws::ApplicationAutoScaling::PutScalingPolicyResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApplicationAutoScaling::Types qw/ApplicationAutoScaling_Alarm/;
  has Alarms => (is => 'ro', isa => ArrayRef[ApplicationAutoScaling_Alarm]);
  has PolicyARN => (is => 'ro', isa => Str, required => 1);

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
                             'class' => 'Paws::ApplicationAutoScaling::Alarm',
                             'type' => 'ArrayRef[ApplicationAutoScaling_Alarm]'
                           }
             },
  'IsRequired' => {
                    'PolicyARN' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::PutScalingPolicyResponse

=head1 ATTRIBUTES


=head2 Alarms => ArrayRef[ApplicationAutoScaling_Alarm]

The CloudWatch alarms created for the target tracking scaling policy.


=head2 B<REQUIRED> PolicyARN => Str

The Amazon Resource Name (ARN) of the resulting scaling policy.


=head2 _request_id => Str


=cut

1;