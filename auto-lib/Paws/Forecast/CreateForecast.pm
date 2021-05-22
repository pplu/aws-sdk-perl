
package Paws::Forecast::CreateForecast;
  use Moose;
  has ForecastName => (is => 'ro', isa => 'Str', required => 1);
  has ForecastTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PredictorArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateForecast');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::CreateForecastResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateForecast - Arguments for method CreateForecast on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateForecast on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method CreateForecast.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateForecast.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $CreateForecastResponse = $forecast->CreateForecast(
      ForecastName  => 'MyName',
      PredictorArn  => 'MyArn',
      ForecastTypes => [ 'MyForecastType', ... ],    # OPTIONAL
      Tags          => [
        {
          Key   => 'MyTagKey',                       # min: 1, max: 128
          Value => 'MyTagValue',                     # max: 256

        },
        ...
      ],                                             # OPTIONAL
    );

    # Results:
    my $ForecastArn = $CreateForecastResponse->ForecastArn;

    # Returns a L<Paws::Forecast::CreateForecastResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/CreateForecast>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ForecastName => Str

A name for the forecast.



=head2 ForecastTypes => ArrayRef[Str|Undef]

The quantiles at which probabilistic forecasts are generated. B<You can
currently specify up to 5 quantiles per forecast>. Accepted values
include C<0.01 to 0.99> (increments of .01 only) and C<mean>. The mean
forecast is different from the median (0.50) when the distribution is
not symmetric (for example, Beta and Negative Binomial). The default
value is C<["0.1", "0.5", "0.9"]>.



=head2 B<REQUIRED> PredictorArn => Str

The Amazon Resource Name (ARN) of the predictor to use to generate the
forecast.



=head2 Tags => ArrayRef[L<Paws::Forecast::Tag>]

The optional metadata that you apply to the forecast to help you
categorize and organize them. Each tag consists of a key and an
optional value, both of which you define.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource - 50.

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length - 128 Unicode characters in UTF-8.

=item *

Maximum value length - 256 Unicode characters in UTF-8.

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case sensitive.

=item *

Do not use C<aws:>, C<AWS:>, or any upper or lowercase combination of
such as a prefix for keys as it is reserved for AWS use. You cannot
edit or delete tag keys with this prefix. Values can have this prefix.
If a tag value has C<aws> as its prefix but the key does not, then
Forecast considers it to be a user tag and will count against the limit
of 50 tags. Tags with only the key prefix of C<aws> do not count
against your tags per resource limit.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateForecast in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

