
package Paws::ELBv2::SetSecurityGroups;
  use Moose;
  has LoadBalancerArn => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetSecurityGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::SetSecurityGroupsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetSecurityGroupsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::SetSecurityGroups - Arguments for method SetSecurityGroups on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetSecurityGroups on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method SetSecurityGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetSecurityGroups.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    # To associate a security group with a load balancer
    # This example associates the specified security group with the specified
    # load balancer.
    my $SetSecurityGroupsOutput = $elasticloadbalancing->SetSecurityGroups(
      {
        'LoadBalancerArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188',
        'SecurityGroups' => ['sg-5943793c']
      }
    );

    # Results:
    my $SecurityGroupIds = $SetSecurityGroupsOutput->SecurityGroupIds;

    # Returns a L<Paws::ELBv2::SetSecurityGroupsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/SetSecurityGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerArn => Str

The Amazon Resource Name (ARN) of the load balancer.



=head2 B<REQUIRED> SecurityGroups => ArrayRef[Str|Undef]

The IDs of the security groups.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetSecurityGroups in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

