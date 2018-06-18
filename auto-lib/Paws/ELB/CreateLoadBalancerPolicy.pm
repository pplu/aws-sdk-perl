
package Paws::ELB::CreateLoadBalancerPolicy;
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyAttributes => (is => 'ro', isa => 'ArrayRef[Paws::ELB::PolicyAttribute]');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyTypeName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::CreateLoadBalancerPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::CreateLoadBalancerPolicy - Arguments for method CreateLoadBalancerPolicy on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLoadBalancerPolicy on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method CreateLoadBalancerPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLoadBalancerPolicy.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
    # To create a policy that enables Proxy Protocol on a load balancer
    # This example creates a policy that enables Proxy Protocol on the specified
    # load balancer.
    my $CreateLoadBalancerPolicyOutput =
      $elasticloadbalancing->CreateLoadBalancerPolicy(
      {
        'LoadBalancerName' => 'my-load-balancer',
        'PolicyAttributes' => [

          {
            'AttributeName'  => 'ProxyProtocol',
            'AttributeValue' => 'true'
          }
        ],
        'PolicyName'     => 'my-ProxyProtocol-policy',
        'PolicyTypeName' => 'ProxyProtocolPolicyType'
      }
      );

    # To create a public key policy
    # This example creates a public key policy.
    my $CreateLoadBalancerPolicyOutput =
      $elasticloadbalancing->CreateLoadBalancerPolicy(
      {
        'LoadBalancerName' => 'my-load-balancer',
        'PolicyAttributes' => [

          {
            'AttributeName' => 'PublicKey',
            'AttributeValue' =>
'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwAYUjnfyEyXr1pxjhFWBpMlggUcqoi3kl+dS74kj//c6x7ROtusUaeQCTgIUkayttRDWchuqo1pHC1u+n5xxXnBBe2ejbb2WRsKIQ5rXEeixsjFpFsojpSQKkzhVGI6mJVZBJDVKSHmswnwLBdofLhzvllpovBPTHe+o4haAWvDBALJU0pkSI1FecPHcs2hwxf14zHoXy1e2k36A64nXW43wtfx5qcVSIxtCEOjnYRg7RPvybaGfQ+v6Iaxb/+7J5kEvZhTFQId+bSiJImF1FSUT1W1xwzBZPUbcUkkXDj45vC2s3Z8E+Lk7a3uZhvsQHLZnrfuWjBWGWvZ/MhZYgEXAMPLE'
          }
        ],
        'PolicyName'     => 'my-PublicKey-policy',
        'PolicyTypeName' => 'PublicKeyPolicyType'
      }
      );

    # To create a backend server authentication policy
    # This example creates a backend server authentication policy that enables
    # authentication on your backend instance using a public key policy.
    my $CreateLoadBalancerPolicyOutput =
      $elasticloadbalancing->CreateLoadBalancerPolicy(
      {
        'LoadBalancerName' => 'my-load-balancer',
        'PolicyAttributes' => [

          {
            'AttributeName'  => 'PublicKeyPolicyName',
            'AttributeValue' => 'my-PublicKey-policy'
          }
        ],
        'PolicyName'     => 'my-authentication-policy',
        'PolicyTypeName' => 'BackendServerAuthenticationPolicyType'
      }
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/CreateLoadBalancerPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.



=head2 PolicyAttributes => ArrayRef[L<Paws::ELB::PolicyAttribute>]

The policy attributes.



=head2 B<REQUIRED> PolicyName => Str

The name of the load balancer policy to be created. This name must be
unique within the set of policies for this load balancer.



=head2 B<REQUIRED> PolicyTypeName => Str

The name of the base policy type. To get the list of policy types, use
DescribeLoadBalancerPolicyTypes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLoadBalancerPolicy in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

