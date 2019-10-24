# Generated from json/callresult_class.tt

package Paws::GameLift::PutScalingPolicyOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw//;
  has Name => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::PutScalingPolicyOutput

=head1 ATTRIBUTES


=head2 Name => Str

Descriptive label that is associated with a scaling policy. Policy
names do not need to be unique.


=head2 _request_id => Str


=cut

1;