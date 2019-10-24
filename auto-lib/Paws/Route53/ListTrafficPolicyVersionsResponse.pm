
package Paws::Route53::ListTrafficPolicyVersionsResponse;
  use Moo;

  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::Route53::Types qw/Route53_TrafficPolicy/;
  has IsTruncated => (is => 'ro', isa => Bool, required => 1);
  has MaxItems => (is => 'ro', isa => Str, required => 1);
  has TrafficPolicies => (is => 'ro', isa => ArrayRef[Route53_TrafficPolicy], required => 1);
  has TrafficPolicyVersionMarker => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               'MaxItems' => {
                               'type' => 'Str'
                             },
               'TrafficPolicies' => {
                                      'class' => 'Paws::Route53::TrafficPolicy',
                                      'type' => 'ArrayRef[Route53_TrafficPolicy]'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TrafficPolicyVersionMarker' => {
                                                 'type' => 'Str'
                                               }
             },
  'IsRequired' => {
                    'IsTruncated' => 1,
                    'MaxItems' => 1,
                    'TrafficPolicies' => 1,
                    'TrafficPolicyVersionMarker' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListTrafficPolicyVersionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IsTruncated => Bool

A flag that indicates whether there are more traffic policies to be
listed. If the response was truncated, you can get the next group of
traffic policies by submitting another C<ListTrafficPolicyVersions>
request and specifying the value of C<NextMarker> in the C<marker>
parameter.



=head2 B<REQUIRED> MaxItems => Str

The value that you specified for the C<maxitems> parameter in the
C<ListTrafficPolicyVersions> request that produced the current
response.



=head2 B<REQUIRED> TrafficPolicies => ArrayRef[Route53_TrafficPolicy]

A list that contains one C<TrafficPolicy> element for each traffic
policy version that is associated with the specified traffic policy.



=head2 B<REQUIRED> TrafficPolicyVersionMarker => Str

If C<IsTruncated> is C<true>, the value of
C<TrafficPolicyVersionMarker> identifies the first traffic policy that
Amazon Route 53 will return if you submit another request. Call
C<ListTrafficPolicyVersions> again and specify the value of
C<TrafficPolicyVersionMarker> in the C<TrafficPolicyVersionMarker>
request parameter.

This element is present only if C<IsTruncated> is C<true>.




=cut

