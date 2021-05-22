
package Paws::AutoScaling::CancelInstanceRefresh;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelInstanceRefresh');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::CancelInstanceRefreshAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CancelInstanceRefreshResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::CancelInstanceRefresh - Arguments for method CancelInstanceRefresh on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelInstanceRefresh on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method CancelInstanceRefresh.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelInstanceRefresh.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To cancel an instance refresh
    # This example cancels an instance refresh operation in progress.
    my $CancelInstanceRefreshAnswer = $autoscaling->CancelInstanceRefresh(
      'AutoScalingGroupName' => 'my-auto-scaling-group' );

    # Results:
    my $InstanceRefreshId = $CancelInstanceRefreshAnswer->InstanceRefreshId;

    # Returns a L<Paws::AutoScaling::CancelInstanceRefreshAnswer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/CancelInstanceRefresh>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelInstanceRefresh in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

