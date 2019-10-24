# Generated from json/callresult_class.tt

package Paws::WAF::GetChangeTokenStatusResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw//;
  has ChangeTokenStatus => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ChangeTokenStatus' => {
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

Paws::WAF::GetChangeTokenStatusResponse

=head1 ATTRIBUTES


=head2 ChangeTokenStatus => Str

The status of the change token.

Valid values are: C<"PROVISIONED">, C<"PENDING">, C<"INSYNC">
=head2 _request_id => Str


=cut

1;