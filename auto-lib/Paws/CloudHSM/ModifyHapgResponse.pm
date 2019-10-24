# Generated from json/callresult_class.tt

package Paws::CloudHSM::ModifyHapgResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudHSM::Types qw//;
  has HapgArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HapgArn' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::ModifyHapgResponse

=head1 ATTRIBUTES


=head2 HapgArn => Str

The ARN of the high-availability partition group.


=head2 _request_id => Str


=cut

1;