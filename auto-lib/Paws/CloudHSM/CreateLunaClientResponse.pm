# Generated from json/callresult_class.tt

package Paws::CloudHSM::CreateLunaClientResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudHSM::Types qw//;
  has ClientArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientArn' => {
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

Paws::CloudHSM::CreateLunaClientResponse

=head1 ATTRIBUTES


=head2 ClientArn => Str

The ARN of the client.


=head2 _request_id => Str


=cut

1;