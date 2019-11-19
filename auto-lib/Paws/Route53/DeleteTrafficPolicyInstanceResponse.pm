
package Paws::Route53::DeleteTrafficPolicyInstanceResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw//;

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => '');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::DeleteTrafficPolicyInstanceResponse

=head1 ATTRIBUTES



=cut

