
package Paws::Route53::GetTrafficPolicyInstanceCountResponse;
  use Moo;

  use Types::Standard qw/Str Int/;
  use Paws::Route53::Types qw//;
  has TrafficPolicyInstanceCount => (is => 'ro', isa => Int, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TrafficPolicyInstanceCount' => {
                                                 'type' => 'Int'
                                               }
             },
  'IsRequired' => {
                    'TrafficPolicyInstanceCount' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetTrafficPolicyInstanceCountResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrafficPolicyInstanceCount => Int

The number of traffic policy instances that are associated with the
current AWS account.




=cut

