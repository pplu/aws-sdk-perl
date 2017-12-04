package Paws::MachineLearning::PerformanceMetrics;
  use Moose;
  has Properties => (is => 'ro', isa => 'Paws::MachineLearning::PerformanceMetricsProperties');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::PerformanceMetrics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MachineLearning::PerformanceMetrics object:

  $service_obj->Method(Att1 => { Properties => $value, ..., Properties => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MachineLearning::PerformanceMetrics object:

  $result = $service_obj->Method(...);
  $result->Att1->Properties

=head1 DESCRIPTION

Measurements of how well the C<MLModel> performed on known
observations. One of the following metrics is returned, based on the
type of the C<MLModel>:

=over

=item *

BinaryAUC: The binary C<MLModel> uses the Area Under the Curve (AUC)
technique to measure performance.

=item *

RegressionRMSE: The regression C<MLModel> uses the Root Mean Square
Error (RMSE) technique to measure performance. RMSE measures the
difference between predicted and actual values for a single variable.

=item *

MulticlassAvgFScore: The multiclass C<MLModel> uses the F1 score
technique to measure performance.

=back

For more information about performance metrics, please see the Amazon
Machine Learning Developer Guide
(http://docs.aws.amazon.com/machine-learning/latest/dg).

=head1 ATTRIBUTES


=head2 Properties => L<Paws::MachineLearning::PerformanceMetricsProperties>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

