# Generated from json/callresult_class.tt

package Paws::FMS::GetPolicyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::FMS::Types qw/FMS_Policy/;
  has Policy => (is => 'ro', isa => FMS_Policy);
  has PolicyArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PolicyArn' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Policy' => {
                             'class' => 'Paws::FMS::Policy',
                             'type' => 'FMS_Policy'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => FMS_Policy

Information about the specified AWS Firewall Manager policy.


=head2 PolicyArn => Str

The Amazon Resource Name (ARN) of the specified policy.


=head2 _request_id => Str


=cut

1;