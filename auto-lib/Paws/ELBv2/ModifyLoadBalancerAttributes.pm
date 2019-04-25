
package Paws::ELBv2::ModifyLoadBalancerAttributes;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::LoadBalancerAttribute]', required => 1);
  has LoadBalancerArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyLoadBalancerAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::ModifyLoadBalancerAttributesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyLoadBalancerAttributesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ModifyLoadBalancerAttributes - Arguments for method ModifyLoadBalancerAttributes on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyLoadBalancerAttributes on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method ModifyLoadBalancerAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyLoadBalancerAttributes.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    # To enable deletion protection
    # This example enables deletion protection for the specified load balancer.
    my $ModifyLoadBalancerAttributesOutput =
      $elasticloadbalancing->ModifyLoadBalancerAttributes(
      {
        'Attributes' => [

          {
            'Key'   => 'deletion_protection.enabled',
            'Value' => 'true'
          }
        ],
        'LoadBalancerArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188'
      }
      );

    # Results:
    my $Attributes = $ModifyLoadBalancerAttributesOutput->Attributes;

    # Returns a L<Paws::ELBv2::ModifyLoadBalancerAttributesOutput> object.
    # To change the idle timeout
    # This example changes the idle timeout value for the specified load
    # balancer.
    my $ModifyLoadBalancerAttributesOutput =
      $elasticloadbalancing->ModifyLoadBalancerAttributes(
      {
        'Attributes' => [

          {
            'Key'   => 'idle_timeout.timeout_seconds',
            'Value' => 30
          }
        ],
        'LoadBalancerArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188'
      }
      );

    # Results:
    my $Attributes = $ModifyLoadBalancerAttributesOutput->Attributes;

   # Returns a L<Paws::ELBv2::ModifyLoadBalancerAttributesOutput> object.
   # To enable access logs
   # This example enables access logs for the specified load balancer. Note that
   # the S3 bucket must exist in the same region as the load balancer and must
   # have a policy attached that grants access to the Elastic Load Balancing
   # service.
    my $ModifyLoadBalancerAttributesOutput =
      $elasticloadbalancing->ModifyLoadBalancerAttributes(
      {
        'Attributes' => [

          {
            'Key'   => 'access_logs.s3.enabled',
            'Value' => 'true'
          },

          {
            'Key'   => 'access_logs.s3.bucket',
            'Value' => 'my-loadbalancer-logs'
          },

          {
            'Key'   => 'access_logs.s3.prefix',
            'Value' => 'myapp'
          }
        ],
        'LoadBalancerArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188'
      }
      );

    # Results:
    my $Attributes = $ModifyLoadBalancerAttributesOutput->Attributes;

    # Returns a L<Paws::ELBv2::ModifyLoadBalancerAttributesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/ModifyLoadBalancerAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => ArrayRef[L<Paws::ELBv2::LoadBalancerAttribute>]

The load balancer attributes.



=head2 B<REQUIRED> LoadBalancerArn => Str

The Amazon Resource Name (ARN) of the load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyLoadBalancerAttributes in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

