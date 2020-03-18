package Paws::Forecast::PredictorExecutionDetails;
  use Moose;
  has PredictorExecutions => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::PredictorExecution]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::PredictorExecutionDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::PredictorExecutionDetails object:

  $service_obj->Method(Att1 => { PredictorExecutions => $value, ..., PredictorExecutions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::PredictorExecutionDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->PredictorExecutions

=head1 DESCRIPTION

Contains details on the backtests performed to evaluate the accuracy of
the predictor. The tests are returned in descending order of accuracy,
with the most accurate backtest appearing first. You specify the number
of backtests to perform when you call the operation.

=head1 ATTRIBUTES


=head2 PredictorExecutions => ArrayRef[L<Paws::Forecast::PredictorExecution>]

  An array of the backtests performed to evaluate the accuracy of the
predictor against a particular algorithm. The
C<NumberOfBacktestWindows> from the object determines the number of
windows in the array.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

