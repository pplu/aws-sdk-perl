package Paws::Forecast::EvaluationParameters;
  use Moose;
  has BackTestWindowOffset => (is => 'ro', isa => 'Int');
  has NumberOfBacktestWindows => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::EvaluationParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::EvaluationParameters object:

  $service_obj->Method(Att1 => { BackTestWindowOffset => $value, ..., NumberOfBacktestWindows => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::EvaluationParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->BackTestWindowOffset

=head1 DESCRIPTION

Parameters that define how to split a dataset into training data and
testing data, and the number of iterations to perform. These parameters
are specified in the predefined algorithms and can be overridden in the
CreatePredictor request.

For example, suppose that you have a dataset with data collection
frequency set to every day and you have 200 days worth of data (that
is, 200 data points). Now suppose that you set the
C<NumberOfBacktestWindows> to 2 and the C<BackTestWindowOffset>
parameter to 20. The algorithm splits the data twice. The first time,
the algorithm trains the model using the first 180 data points and uses
the last 20 data points for evaluation. The second time, the algorithm
trains the model using the first 160 data points and uses the last 40
data points for evaluation.

=head1 ATTRIBUTES


=head2 BackTestWindowOffset => Int

  The point from the end of the dataset where you want to split the data
for model training and evaluation. The value is specified as the number
of data points.


=head2 NumberOfBacktestWindows => Int

  The number of times to split the input data. The default is 1. The
range is 1 through 5.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

