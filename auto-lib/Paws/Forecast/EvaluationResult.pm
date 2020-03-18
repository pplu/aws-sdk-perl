package Paws::Forecast::EvaluationResult;
  use Moose;
  has AlgorithmArn => (is => 'ro', isa => 'Str');
  has TestWindows => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::WindowSummary]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::EvaluationResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::EvaluationResult object:

  $service_obj->Method(Att1 => { AlgorithmArn => $value, ..., TestWindows => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::EvaluationResult object:

  $result = $service_obj->Method(...);
  $result->Att1->AlgorithmArn

=head1 DESCRIPTION

The results of evaluating an algorithm. Returned as part of the
GetAccuracyMetrics response.

=head1 ATTRIBUTES


=head2 AlgorithmArn => Str

  The Amazon Resource Name (ARN) of the algorithm that was evaluated.


=head2 TestWindows => ArrayRef[L<Paws::Forecast::WindowSummary>]

  The array of test windows used for evaluating the algorithm. The
C<NumberOfBacktestWindows> from the EvaluationParameters object
determines the number of windows in the array.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

