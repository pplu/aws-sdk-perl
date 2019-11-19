
package Paws::Route53::CreateTrafficPolicyInstanceResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_TrafficPolicyInstance/;
  has Location => (is => 'ro', isa => Str, required => 1);
  has TrafficPolicyInstance => (is => 'ro', isa => Route53_TrafficPolicyInstance, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'Location' => 'Location'
                     },
  'types' => {
               'TrafficPolicyInstance' => {
                                            'type' => 'Route53_TrafficPolicyInstance',
                                            'class' => 'Paws::Route53::TrafficPolicyInstance'
                                          },
               'Location' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Location' => 1,
                    'TrafficPolicyInstance' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateTrafficPolicyInstanceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Location => Str

A unique URL that represents a new traffic policy instance.



=head2 B<REQUIRED> TrafficPolicyInstance => Route53_TrafficPolicyInstance

A complex type that contains settings for the new traffic policy
instance.




=cut

