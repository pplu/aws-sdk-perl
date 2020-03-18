package Paws::Forecast::FeaturizationMethod;
  use Moose;
  has FeaturizationMethodName => (is => 'ro', isa => 'Str', required => 1);
  has FeaturizationMethodParameters => (is => 'ro', isa => 'Paws::Forecast::FeaturizationMethodParameters');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::FeaturizationMethod

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::FeaturizationMethod object:

  $service_obj->Method(Att1 => { FeaturizationMethodName => $value, ..., FeaturizationMethodParameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::FeaturizationMethod object:

  $result = $service_obj->Method(...);
  $result->Att1->FeaturizationMethodName

=head1 DESCRIPTION

Provides information about the method that featurizes (transforms) a
dataset field. The method is part of the C<FeaturizationPipeline> of
the Featurization object. If you don't specify
C<FeaturizationMethodParameters>, Amazon Forecast uses default
parameters.

The following is an example of how you specify a C<FeaturizationMethod>
object.

C<{>

C<"FeaturizationMethodName": "filling",>

C<"FeaturizationMethodParameters": {"aggregation": "avg", "backfill":
"nan"}>

C<}>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FeaturizationMethodName => Str

  The name of the method. The "filling" method is the only supported
method.


=head2 FeaturizationMethodParameters => L<Paws::Forecast::FeaturizationMethodParameters>

  The method parameters (key-value pairs). Specify these parameters to
override the default values. The following list shows the parameters
and their valid values. Bold signifies the default value.

=over

=item *

C<aggregation>: B<sum>, C<avg>, C<first>, C<min>, C<max>

=item *

C<frontfill>: B<none>

=item *

C<middlefill>: B<zero>, C<nan> (not a number)

=item *

C<backfill>: B<zero>, C<nan>

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

