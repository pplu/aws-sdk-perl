
package Paws::ELBv2::RegisterTargets;
  use Moose;
  has TargetGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::TargetDescription]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterTargets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::RegisterTargetsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterTargetsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::RegisterTargets - Arguments for method RegisterTargets on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterTargets on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method RegisterTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterTargets.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    # To register targets with a target group
    # This example registers the specified instances with the specified target
    # group.
    my $RegisterTargetsOutput = $elasticloadbalancing->RegisterTargets(
      {
        'TargetGroupArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067',
        'Targets' => [

          {
            'Id' => 'i-80c8dd94'
          },

          {
            'Id' => 'i-ceddcd4d'
          }
        ]
      }
    );

    # To register targets with a target group using port overrides
    # This example registers the specified instance with the specified target
    # group using multiple ports. This enables you to register ECS containers on
    # the same instance as targets in the target group.
    my $RegisterTargetsOutput = $elasticloadbalancing->RegisterTargets(
      {
        'TargetGroupArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-new-targets/3bb63f11dfb0faf9',
        'Targets' => [

          {
            'Id'   => 'i-80c8dd94',
            'Port' => 80
          },

          {
            'Id'   => 'i-80c8dd94',
            'Port' => 766
          }
        ]
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/RegisterTargets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TargetGroupArn => Str

The Amazon Resource Name (ARN) of the target group.



=head2 B<REQUIRED> Targets => ArrayRef[L<Paws::ELBv2::TargetDescription>]

The targets.

To register a target by instance ID, specify the instance ID. To
register a target by IP address, specify the IP address. To register a
Lambda function, specify the ARN of the Lambda function.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterTargets in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

