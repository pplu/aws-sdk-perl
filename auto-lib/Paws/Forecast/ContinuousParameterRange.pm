package Paws::Forecast::ContinuousParameterRange;
  use Moose;
  has MaxValue => (is => 'ro', isa => 'Num', required => 1);
  has MinValue => (is => 'ro', isa => 'Num', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ScalingType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ContinuousParameterRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::ContinuousParameterRange object:

  $service_obj->Method(Att1 => { MaxValue => $value, ..., ScalingType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::ContinuousParameterRange object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxValue

=head1 DESCRIPTION

Specifies a continuous hyperparameter and it's range of tunable values.
This object is part of the ParameterRanges object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxValue => Num

  The maximum tunable value of the hyperparameter.


=head2 B<REQUIRED> MinValue => Num

  The minimum tunable value of the hyperparameter.


=head2 B<REQUIRED> Name => Str

  The name of the hyperparameter to tune.


=head2 ScalingType => Str

  The scale that hyperparameter tuning uses to search the hyperparameter
range. For information about choosing a hyperparameter scale, see
Hyperparameter Scaling
(http://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-define-ranges.html#scaling-type).
One of the following values:

=over

=item Auto

Amazon Forecast hyperparameter tuning chooses the best scale for the
hyperparameter.

=item Linear

Hyperparameter tuning searches the values in the hyperparameter range
by using a linear scale.

=item Logarithmic

Hyperparameter tuning searches the values in the hyperparameter range
by using a logarithmic scale.

Logarithmic scaling works only for ranges that have only values greater
than 0.

=item ReverseLogarithmic

Hyperparemeter tuning searches the values in the hyperparameter range
by using a reverse logarithmic scale.

Reverse logarithmic scaling works only for ranges that are entirely
within the range 0 E<lt>= x E<lt> 1.0.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

