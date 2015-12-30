
package Paws::Route53::ListTrafficPoliciesResponse;
  use Moose;
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicyIdMarker => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicySummaries => (is => 'ro', isa => 'ArrayRef[Paws::Route53::TrafficPolicySummary]', traits => ['Unwrapped'], xmlname => 'TrafficPolicySummary', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53:: - Arguments for method  on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method  on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method .

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to .

As an example:

  $service_obj->(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IsTruncated => Bool

A flag that indicates whether there are more traffic policies to be
listed. If the response was truncated, you can get the next group of
C<MaxItems> traffic policies by calling C<ListTrafficPolicies> again
and specifying the value of the C<TrafficPolicyIdMarker> element in the
C<TrafficPolicyIdMarker> request parameter.

Valid Values: C<true> | C<false>



=head2 B<REQUIRED> MaxItems => Str

The value that you specified for the C<MaxItems> parameter in the call
to C<ListTrafficPolicies> that produced the current response.



=head2 B<REQUIRED> TrafficPolicyIdMarker => Str

If the value of C<IsTruncated> is C<true>, C<TrafficPolicyIdMarker> is
the ID of the first traffic policy in the next group of C<MaxItems>
traffic policies.



=head2 B<REQUIRED> TrafficPolicySummaries => ArrayRef[L<Paws::Route53::TrafficPolicySummary>]

A list that contains one C<TrafficPolicySummary> element for each
traffic policy that was created by the current AWS account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method  in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

