
package Paws::Route53::CreateTrafficPolicy;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has Document => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrafficPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/trafficpolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::CreateTrafficPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateTrafficPolicy - Arguments for method CreateTrafficPolicy on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrafficPolicy on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method CreateTrafficPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrafficPolicy.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $CreateTrafficPolicyResponse = $route53->CreateTrafficPolicy(
      Document => 'MyTrafficPolicyDocument',
      Name     => 'MyTrafficPolicyName',
      Comment  => 'MyTrafficPolicyComment',    # OPTIONAL
    );

    # Results:
    my $Location      = $CreateTrafficPolicyResponse->Location;
    my $TrafficPolicy = $CreateTrafficPolicyResponse->TrafficPolicy;

    # Returns a L<Paws::Route53::CreateTrafficPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/CreateTrafficPolicy>

=head1 ATTRIBUTES


=head2 Comment => Str

(Optional) Any comments that you want to include about the traffic
policy.



=head2 B<REQUIRED> Document => Str

The definition of this traffic policy in JSON format. For more
information, see Traffic Policy Document Format
(http://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html).



=head2 B<REQUIRED> Name => Str

The name of the traffic policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrafficPolicy in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

