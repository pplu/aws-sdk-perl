
package Paws::Route53::UpdateTrafficPolicyCommentResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_TrafficPolicy/;
  has TrafficPolicy => (is => 'ro', isa => Route53_TrafficPolicy, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TrafficPolicy' => {
                                    'class' => 'Paws::Route53::TrafficPolicy',
                                    'type' => 'Route53_TrafficPolicy'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'TrafficPolicy' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::UpdateTrafficPolicyCommentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrafficPolicy => Route53_TrafficPolicy

A complex type that contains settings for the specified traffic policy.




=cut

