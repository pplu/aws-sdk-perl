package Paws::CostExplorer::ForecastResult;
  use Moose;
  has MeanValue => (is => 'ro', isa => 'Str');
  has PredictionIntervalLowerBound => (is => 'ro', isa => 'Str');
  has PredictionIntervalUpperBound => (is => 'ro', isa => 'Str');
  has TimePeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ForecastResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::ForecastResult object:

  $service_obj->Method(Att1 => { MeanValue => $value, ..., TimePeriod => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::ForecastResult object:

  $result = $service_obj->Method(...);
  $result->Att1->MeanValue

=head1 DESCRIPTION

The forecast created for your query.

=head1 ATTRIBUTES


=head2 MeanValue => Str

  The mean value of the forecast.


=head2 PredictionIntervalLowerBound => Str

  The lower limit for the prediction interval.


=head2 PredictionIntervalUpperBound => Str

  The upper limit for the prediction interval.


=head2 TimePeriod => L<Paws::CostExplorer::DateInterval>

  The period of time that the forecast covers.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

