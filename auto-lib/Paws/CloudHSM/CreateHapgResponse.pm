# Generated from json/callresult_class.tt

package Paws::CloudHSM::CreateHapgResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudHSM::Types qw//;
  has HapgArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'HapgArn' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::CreateHapgResponse

=head1 ATTRIBUTES


=head2 HapgArn => Str

The ARN of the high-availability partition group.


=head2 _request_id => Str


=cut

1;