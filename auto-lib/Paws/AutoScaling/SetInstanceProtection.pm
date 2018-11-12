
package Paws::AutoScaling::SetInstanceProtection;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ProtectedFromScaleIn => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetInstanceProtection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::SetInstanceProtectionAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetInstanceProtectionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::SetInstanceProtection - Arguments for method SetInstanceProtection on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetInstanceProtection on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method SetInstanceProtection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetInstanceProtection.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To enable instance protection for an instance
    # This example enables instance protection for the specified instance.
    my $SetInstanceProtectionAnswer = $autoscaling->SetInstanceProtection(
      {
        'AutoScalingGroupName' => 'my-auto-scaling-group',
        'InstanceIds'          => ['i-93633f9b'],
        'ProtectedFromScaleIn' => 1
      }
    );

    # To disable instance protection for an instance
    # This example disables instance protection for the specified instance.
    my $SetInstanceProtectionAnswer = $autoscaling->SetInstanceProtection(
      {
        'AutoScalingGroupName' => 'my-auto-scaling-group',
        'InstanceIds'          => ['i-93633f9b'],
        'ProtectedFromScaleIn' => 0
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/SetInstanceProtection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 B<REQUIRED> InstanceIds => ArrayRef[Str|Undef]

One or more instance IDs.



=head2 B<REQUIRED> ProtectedFromScaleIn => Bool

Indicates whether the instance is protected from termination by Amazon
EC2 Auto Scaling when scaling in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetInstanceProtection in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

