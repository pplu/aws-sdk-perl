
package Paws::AutoScaling::GetPredictiveScalingForecast;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPredictiveScalingForecast');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::GetPredictiveScalingForecastAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetPredictiveScalingForecastResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::GetPredictiveScalingForecast - Arguments for method GetPredictiveScalingForecast on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPredictiveScalingForecast on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method GetPredictiveScalingForecast.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPredictiveScalingForecast.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    my $GetPredictiveScalingForecastAnswer =
      $autoscaling->GetPredictiveScalingForecast(
      AutoScalingGroupName => 'MyXmlStringMaxLen255',
      EndTime              => '1970-01-01T01:00:00',
      PolicyName           => 'MyXmlStringMaxLen255',
      StartTime            => '1970-01-01T01:00:00',

      );

    # Results:
    my $CapacityForecast =
      $GetPredictiveScalingForecastAnswer->CapacityForecast;
    my $LoadForecast = $GetPredictiveScalingForecastAnswer->LoadForecast;
    my $UpdateTime   = $GetPredictiveScalingForecastAnswer->UpdateTime;

    # Returns a L<Paws::AutoScaling::GetPredictiveScalingForecastAnswer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/GetPredictiveScalingForecast>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 B<REQUIRED> EndTime => Str

The exclusive end time of the time range for the forecast data to get.
The maximum time duration between the start and end time is 30 days.

Although this parameter can accept a date and time that is more than
two days in the future, the availability of forecast data has limits.
Amazon EC2 Auto Scaling only issues forecasts for periods of two days
in advance.



=head2 B<REQUIRED> PolicyName => Str

The name of the policy.



=head2 B<REQUIRED> StartTime => Str

The inclusive start time of the time range for the forecast data to
get. At most, the date and time can be one year before the current date
and time.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPredictiveScalingForecast in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

