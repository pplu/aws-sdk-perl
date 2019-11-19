# Generated from json/callresult_class.tt

package Paws::CloudHSMv2::CreateHsmResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudHSMv2::Types qw/CloudHSMv2_Hsm/;
  has Hsm => (is => 'ro', isa => CloudHSMv2_Hsm);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Hsm' => {
                          'type' => 'CloudHSMv2_Hsm',
                          'class' => 'Paws::CloudHSMv2::Hsm'
                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::CreateHsmResponse

=head1 ATTRIBUTES


=head2 Hsm => CloudHSMv2_Hsm

Information about the HSM that was created.


=head2 _request_id => Str


=cut

1;