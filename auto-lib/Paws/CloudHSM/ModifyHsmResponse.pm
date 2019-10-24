# Generated from json/callresult_class.tt

package Paws::CloudHSM::ModifyHsmResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudHSM::Types qw//;
  has HsmArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'HsmArn' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::ModifyHsmResponse

=head1 ATTRIBUTES


=head2 HsmArn => Str

The ARN of the HSM.


=head2 _request_id => Str


=cut

1;