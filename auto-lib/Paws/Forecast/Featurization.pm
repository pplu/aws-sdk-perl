package Paws::Forecast::Featurization;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has FeaturizationPipeline => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::FeaturizationMethod]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::Featurization

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::Featurization object:

  $service_obj->Method(Att1 => { AttributeName => $value, ..., FeaturizationPipeline => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::Featurization object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeName

=head1 DESCRIPTION

Provides featurization (transformation) information for a dataset
field. This object is part of the FeaturizationConfig object.

For example:

C<{>

C<"AttributeName": "demand",>

C<FeaturizationPipeline [ {>

C<"FeaturizationMethodName": "filling",>

C<"FeaturizationMethodParameters": {"aggregation": "avg", "backfill":
"nan"}>

C<} ]>

C<}>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeName => Str

  The name of the schema attribute specifying the data field to be
featurized. In this release, only the C<target> field of the
C<TARGET_TIME_SERIES> dataset type is supported. For example, for the
C<RETAIL> domain, the target is C<demand>, and for the C<CUSTOM>
domain, the target is C<target_value>.


=head2 FeaturizationPipeline => ArrayRef[L<Paws::Forecast::FeaturizationMethod>]

  An array C<FeaturizationMethod> objects that specifies the feature
transformation methods. For this release, the number of methods is
limited to one.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

