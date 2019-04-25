
package Paws::ELBv2::DeregisterTargets;
  use Moose;
  has TargetGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::TargetDescription]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterTargets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::DeregisterTargetsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeregisterTargetsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DeregisterTargets - Arguments for method DeregisterTargets on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterTargets on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method DeregisterTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterTargets.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    # To deregister a target from a target group
    # This example deregisters the specified instance from the specified target
    # group.
    my $DeregisterTargetsOutput = $elasticloadbalancing->DeregisterTargets(
      {
        'TargetGroupArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067',
        'Targets' => [

          {
            'Id' => 'i-0f76fade'
          }
        ]
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/DeregisterTargets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TargetGroupArn => Str

The Amazon Resource Name (ARN) of the target group.



=head2 B<REQUIRED> Targets => ArrayRef[L<Paws::ELBv2::TargetDescription>]

The targets. If you specified a port override when you registered a
target, you must specify both the target ID and the port when you
deregister it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterTargets in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

