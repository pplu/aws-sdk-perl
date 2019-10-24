# Generated from default/object.tt
package Paws::SageMaker::ContinuousParameterRange;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw//;
  has MaxValue => (is => 'ro', isa => Str, required => 1);
  has MinValue => (is => 'ro', isa => Str, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);
  has ScalingType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxValue' => {
                               'type' => 'Str'
                             },
               'ScalingType' => {
                                  'type' => 'Str'
                                },
               'MinValue' => {
                               'type' => 'Str'
                             },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'MaxValue' => 1,
                    'MinValue' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ContinuousParameterRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ContinuousParameterRange object:

  $service_obj->Method(Att1 => { MaxValue => $value, ..., ScalingType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ContinuousParameterRange object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxValue

=head1 DESCRIPTION

A list of continuous hyperparameters to tune.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxValue => Str

  The maximum value for the hyperparameter. The tuning job uses
floating-point values between C<MinValue> value and this value for
tuning.


=head2 B<REQUIRED> MinValue => Str

  The minimum value for the hyperparameter. The tuning job uses
floating-point values between this value and C<MaxValue>for tuning.


=head2 B<REQUIRED> Name => Str

  The name of the continuous hyperparameter to tune.


=head2 ScalingType => Str

  The scale that hyperparameter tuning uses to search the hyperparameter
range. For information about choosing a hyperparameter scale, see
Hyperparameter Scaling
(http://docs.aws.amazon.com//sagemaker/latest/dg/automatic-model-tuning-define-ranges.html#scaling-type).
One of the following values:

=over

=item Auto

Amazon SageMaker hyperparameter tuning chooses the best scale for the
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
within the range 0E<lt>=xE<lt>1.0.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

