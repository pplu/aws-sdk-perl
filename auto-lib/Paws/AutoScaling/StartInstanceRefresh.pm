
package Paws::AutoScaling::StartInstanceRefresh;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Preferences => (is => 'ro', isa => 'Paws::AutoScaling::RefreshPreferences');
  has Strategy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartInstanceRefresh');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::StartInstanceRefreshAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'StartInstanceRefreshResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::StartInstanceRefresh - Arguments for method StartInstanceRefresh on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartInstanceRefresh on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method StartInstanceRefresh.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartInstanceRefresh.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To start an instance refresh
    # This example starts an instance refresh for the specified Auto Scaling
    # group.
    my $StartInstanceRefreshAnswer = $autoscaling->StartInstanceRefresh(
      'AutoScalingGroupName' => 'my-auto-scaling-group',
      'Preferences'          => {
        'InstanceWarmup'       => 400,
        'MinHealthyPercentage' => 50
      }
    );

    # Results:
    my $InstanceRefreshId = $StartInstanceRefreshAnswer->InstanceRefreshId;

    # Returns a L<Paws::AutoScaling::StartInstanceRefreshAnswer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/StartInstanceRefresh>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 Preferences => L<Paws::AutoScaling::RefreshPreferences>

Set of preferences associated with the instance refresh request.

If not provided, the default values are used. For
C<MinHealthyPercentage>, the default value is C<90>. For
C<InstanceWarmup>, the default is to use the value specified for the
health check grace period for the Auto Scaling group.

For more information, see RefreshPreferences
(https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_RefreshPreferences.html)
in the I<Amazon EC2 Auto Scaling API Reference>.



=head2 Strategy => Str

The strategy to use for the instance refresh. The only valid value is
C<Rolling>.

A rolling update is an update that is applied to all instances in an
Auto Scaling group until all instances have been updated. A rolling
update can fail due to failed health checks or if instances are on
standby or are protected from scale in. If the rolling update process
fails, any instances that were already replaced are not rolled back to
their previous configuration.

Valid values are: C<"Rolling">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartInstanceRefresh in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

