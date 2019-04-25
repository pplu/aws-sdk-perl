
package Paws::ELB::CreateLBCookieStickinessPolicy;
  use Moose;
  has CookieExpirationPeriod => (is => 'ro', isa => 'Int');
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLBCookieStickinessPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::CreateLBCookieStickinessPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLBCookieStickinessPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::CreateLBCookieStickinessPolicy - Arguments for method CreateLBCookieStickinessPolicy on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLBCookieStickinessPolicy on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method CreateLBCookieStickinessPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLBCookieStickinessPolicy.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
    # To generate a duration-based stickiness policy for your load balancer
    # This example generates a stickiness policy with sticky session lifetimes
    # controlled by the specified expiration period.
    my $CreateLBCookieStickinessPolicyOutput =
      $elasticloadbalancing->CreateLBCookieStickinessPolicy(
      {
        'CookieExpirationPeriod' => 60,
        'LoadBalancerName'       => 'my-load-balancer',
        'PolicyName'             => 'my-duration-cookie-policy'
      }
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/CreateLBCookieStickinessPolicy>

=head1 ATTRIBUTES


=head2 CookieExpirationPeriod => Int

The time period, in seconds, after which the cookie should be
considered stale. If you do not specify this parameter, the default
value is 0, which indicates that the sticky session should last for the
duration of the browser session.



=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.



=head2 B<REQUIRED> PolicyName => Str

The name of the policy being created. Policy names must consist of
alphanumeric characters and dashes (-). This name must be unique within
the set of policies for this load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLBCookieStickinessPolicy in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

