
package Paws::Lightsail::UpdateLoadBalancerAttribute;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attributeName' , required => 1);
  has AttributeValue => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attributeValue' , required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loadBalancerName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLoadBalancerAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::UpdateLoadBalancerAttributeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::UpdateLoadBalancerAttribute - Arguments for method UpdateLoadBalancerAttribute on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLoadBalancerAttribute on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method UpdateLoadBalancerAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLoadBalancerAttribute.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $UpdateLoadBalancerAttributeResult =
      $lightsail->UpdateLoadBalancerAttribute(
      AttributeName    => 'HealthCheckPath',
      AttributeValue   => 'MyStringMax256',
      LoadBalancerName => 'MyResourceName',

      );

    # Results:
    my $Operations = $UpdateLoadBalancerAttributeResult->Operations;

    # Returns a L<Paws::Lightsail::UpdateLoadBalancerAttributeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/UpdateLoadBalancerAttribute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeName => Str

The name of the attribute you want to update. Valid values are below.

Valid values are: C<"HealthCheckPath">, C<"SessionStickinessEnabled">, C<"SessionStickiness_LB_CookieDurationSeconds">

=head2 B<REQUIRED> AttributeValue => Str

The value that you want to specify for the attribute name.



=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer that you want to modify (e.g.,
C<my-load-balancer>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLoadBalancerAttribute in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

