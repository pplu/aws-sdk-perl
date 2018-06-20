
package Paws::AutoScaling::EnableMetricsCollection;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Granularity => (is => 'ro', isa => 'Str', required => 1);
  has Metrics => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableMetricsCollection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::EnableMetricsCollection - Arguments for method EnableMetricsCollection on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableMetricsCollection on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method EnableMetricsCollection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableMetricsCollection.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To enable metrics collection for an Auto Scaling group
    # This example enables data collection for the specified Auto Scaling group.
    $autoscaling->EnableMetricsCollection(
      {
        'AutoScalingGroupName' => 'my-auto-scaling-group',
        'Granularity'          => '1Minute'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/EnableMetricsCollection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 B<REQUIRED> Granularity => Str

The granularity to associate with the metrics to collect. The only
valid value is C<1Minute>.



=head2 Metrics => ArrayRef[Str|Undef]

One or more of the following metrics. If you omit this parameter, all
metrics are enabled.

=over

=item *

C<GroupMinSize>

=item *

C<GroupMaxSize>

=item *

C<GroupDesiredCapacity>

=item *

C<GroupInServiceInstances>

=item *

C<GroupPendingInstances>

=item *

C<GroupStandbyInstances>

=item *

C<GroupTerminatingInstances>

=item *

C<GroupTotalInstances>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableMetricsCollection in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

