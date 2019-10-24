
package Paws::Route53::GetTrafficPolicyInstanceResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_TrafficPolicyInstance/;
  has TrafficPolicyInstance => (is => 'ro', isa => Route53_TrafficPolicyInstance, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TrafficPolicyInstance' => {
                                            'class' => 'Paws::Route53::TrafficPolicyInstance',
                                            'type' => 'Route53_TrafficPolicyInstance'
                                          }
             },
  'IsRequired' => {
                    'TrafficPolicyInstance' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetTrafficPolicyInstanceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrafficPolicyInstance => Route53_TrafficPolicyInstance

A complex type that contains settings for the traffic policy instance.




=cut

