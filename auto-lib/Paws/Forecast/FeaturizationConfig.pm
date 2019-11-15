package Paws::Forecast::FeaturizationConfig;
  use Moose;
  has Featurizations => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::Featurization]');
  has ForecastDimensions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ForecastFrequency => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::FeaturizationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::FeaturizationConfig object:

  $service_obj->Method(Att1 => { Featurizations => $value, ..., ForecastFrequency => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::FeaturizationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Featurizations

=head1 DESCRIPTION

In a CreatePredictor operation, the specified algorithm trains a model
using the specified dataset group. You can optionally tell the
operation to modify data fields prior to training a model. These
modifications are referred to as I<featurization>.

You define featurization using the C<FeaturizationConfig> object. You
specify an array of transformations, one for each field that you want
to featurize. You then include the C<FeaturizationConfig> in your
C<CreatePredictor> request. Amazon Forecast applies the featurization
to the C<TARGET_TIME_SERIES> dataset before model training.

You can create multiple featurization configurations. For example, you
might call the C<CreatePredictor> operation twice by specifying
different featurization configurations.

=head1 ATTRIBUTES


=head2 Featurizations => ArrayRef[L<Paws::Forecast::Featurization>]

  An array of featurization (transformation) information for the fields
of a dataset. In this release, only a single featurization is
supported.


=head2 ForecastDimensions => ArrayRef[Str|Undef]

  An array of dimension (field) names that specify how to group the
generated forecast.

For example, suppose that you are generating a forecast for item sales
across all of your stores, and your dataset contains a C<store_id>
field. If you want the sales forecast for each item by store, you would
specify C<store_id> as the dimension.


=head2 B<REQUIRED> ForecastFrequency => Str

  The frequency of predictions in a forecast.

Valid intervals are Y (Year), M (Month), W (Week), D (Day), H (Hour),
30min (30 minutes), 15min (15 minutes), 10min (10 minutes), 5min (5
minutes), and 1min (1 minute). For example, "Y" indicates every year
and "5min" indicates every five minutes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

