package Paws::SageMaker::Filter;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Operator => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::Filter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::Filter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::Filter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A conditional statement for a search expression that includes a Boolean
operator, a resource property, and a value.

If you don't specify an C<Operator> and a C<Value>, the filter searches
for only the specified property. For example, defining a C<Filter> for
the C<FailureReason> for the C<TrainingJob> C<Resource> searches for
training job objects that have a value in the C<FailureReason> field.

If you specify a C<Value>, but not an C<Operator>, Amazon SageMaker
uses the equals operator as the default.

In search, there are several property types:

=over

=item Metrics

To define a metric filter, enter a value using the form
C<"Metrics.E<lt>nameE<gt>">, where C<E<lt>nameE<gt>> is a metric name.
For example, the following filter searches for training jobs with an
C<"accuracy"> metric greater than C<"0.9">:

C<{>

C<"Name": "Metrics.accuracy",>

C<"Operator": "GREATER_THAN",>

C<"Value": "0.9">

C<}>

=item HyperParameters

To define a hyperparameter filter, enter a value with the form
C<"HyperParameters.E<lt>nameE<gt>">. Decimal hyperparameter values are
treated as a decimal in a comparison if the specified C<Value> is also
a decimal value. If the specified C<Value> is an integer, the decimal
hyperparameter values are treated as integers. For example, the
following filter is satisfied by training jobs with a
C<"learning_rate"> hyperparameter that is less than C<"0.5">:

C<{>

C<"Name": "HyperParameters.learning_rate",>

C<"Operator": "LESS_THAN",>

C<"Value": "0.5">

C<}>

=item Tags

To define a tag filter, enter a value with the form
C<"Tags.E<lt>keyE<gt>">.

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  A property name. For example, C<TrainingJobName>. For the list of valid
property names returned in a search result for each supported resource,
see TrainingJob properties. You must specify a valid property name for
the resource.


=head2 Operator => Str

  A Boolean binary operator that is used to evaluate the filter. The
operator field contains one of the following values:

=over

=item Equals

The specified resource in C<Name> equals the specified C<Value>.

=item NotEquals

The specified resource in C<Name> does not equal the specified
C<Value>.

=item GreaterThan

The specified resource in C<Name> is greater than the specified
C<Value>. Not supported for text-based properties.

=item GreaterThanOrEqualTo

The specified resource in C<Name> is greater than or equal to the
specified C<Value>. Not supported for text-based properties.

=item LessThan

The specified resource in C<Name> is less than the specified C<Value>.
Not supported for text-based properties.

=item LessThanOrEqualTo

The specified resource in C<Name> is less than or equal to the
specified C<Value>. Not supported for text-based properties.

=item Contains

Only supported for text-based properties. The word-list of the property
contains the specified C<Value>.

=back

If you have specified a filter C<Value>, the default is C<Equals>.


=head2 Value => Str

  A value used with C<Resource> and C<Operator> to determine if objects
satisfy the filter's condition. For numerical properties, C<Value> must
be an integer or floating-point decimal. For timestamp properties,
C<Value> must be an ISO 8601 date-time string of the following format:
C<YYYY-mm-dd'T'HH:MM:SS>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

