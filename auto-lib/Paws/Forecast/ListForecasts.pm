# Generated from json/callargs_class.tt

package Paws::Forecast::ListForecasts;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Forecast::Types qw/Forecast_Filter/;
  has Filters => (is => 'ro', isa => ArrayRef[Forecast_Filter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListForecasts');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Forecast::ListForecastsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'Filters' => {
                              'class' => 'Paws::Forecast::Filter',
                              'type' => 'ArrayRef[Forecast_Filter]'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListForecasts - Arguments for method ListForecasts on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListForecasts on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method ListForecasts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListForecasts.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $ListForecastsResponse = $forecast->ListForecasts(
      Filters => [
        {
          Condition => 'IS',          # values: IS, IS_NOT
          Key       => 'MyString',    # max: 256
          Value     => 'MyArn',       # max: 256

        },
        ...
      ],                              # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Forecasts = $ListForecastsResponse->Forecasts;
    my $NextToken = $ListForecastsResponse->NextToken;

    # Returns a L<Paws::Forecast::ListForecastsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/ListForecasts>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[Forecast_Filter]

An array of filters. For each filter, you provide a condition and a
match statement. The condition is either C<IS> or C<IS_NOT>, which
specifies whether to include or exclude, respectively, from the list,
the predictors that match the statement. The match statement consists
of a key and a value. In this release, C<Name> is the only valid key,
which filters on the C<ForecastName> property.

=over

=item *

C<Condition> - C<IS> or C<IS_NOT>

=item *

C<Key> - C<Name>

=item *

C<Value> - the value to match

=back

For example, to list all forecasts named I<my_forecast>, you would
specify:

C<"Filters": [ { "Condition": "IS", "Key": "Name", "Value":
"my_forecast" } ]>



=head2 MaxResults => Int

The number of items to return in the response.



=head2 NextToken => Str

If the result of the previous request was truncated, the response
includes a C<NextToken>. To retrieve the next set of results, use the
token in the next request. Tokens expire after 24 hours.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListForecasts in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

