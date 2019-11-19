# Generated from json/callargs_class.tt

package Paws::ForecastQuery::QueryForecast;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ForecastQuery::Types qw/ForecastQuery_Filters/;
  has EndDate => (is => 'ro', isa => Str, predicate => 1);
  has Filters => (is => 'ro', isa => ForecastQuery_Filters, required => 1, predicate => 1);
  has ForecastArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has StartDate => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'QueryForecast');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ForecastQuery::QueryForecastResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Filters' => 1,
                    'ForecastArn' => 1
                  },
  'types' => {
               'EndDate' => {
                              'type' => 'Str'
                            },
               'ForecastArn' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'StartDate' => {
                                'type' => 'Str'
                              },
               'Filters' => {
                              'class' => 'Paws::ForecastQuery::Filters',
                              'type' => 'ForecastQuery_Filters'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ForecastQuery::QueryForecast - Arguments for method QueryForecast on L<Paws::ForecastQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method QueryForecast on the
L<Amazon Forecast Query Service|Paws::ForecastQuery> service. Use the attributes of this class
as arguments to method QueryForecast.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to QueryForecast.

=head1 SYNOPSIS

    my $forecastquery = Paws->service('ForecastQuery');
    my $QueryForecastResponse = $forecastquery->QueryForecast(
      Filters => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: max: 256, value: max: 256
      },
      ForecastArn => 'MyArn',
      EndDate     => 'MyDateTime',     # OPTIONAL
      NextToken   => 'MyNextToken',    # OPTIONAL
      StartDate   => 'MyDateTime',     # OPTIONAL
    );

    # Results:
    my $Forecast = $QueryForecastResponse->Forecast;

    # Returns a L<Paws::ForecastQuery::QueryForecastResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecastquery/QueryForecast>

=head1 ATTRIBUTES


=head2 EndDate => Str

The end date for the forecast. Specify the date using this format:
yyyy-MM-dd'T'HH:mm:ss'Z' (ISO 8601 format). For example,
"1970-01-01T00:00:00Z."



=head2 B<REQUIRED> Filters => ForecastQuery_Filters

The filtering criteria to apply when retrieving the forecast. For
example:

=over

=item *

To get a forecast for a specific item specify the following:

C<{"item_id" : "client_1"}>

=back

=over

=item *

To get a forecast for a specific item sold in a specific location,
specify the following:

C<{"item_id" : "client_1", "location" : "ny"}>

=back

=over

=item *

To get a forecast for all blue items sold in a specific location,
specify the following:

C<{ "location" : "ny", "color":"blue"}>

=back

To get the full forecast, use the operation.



=head2 B<REQUIRED> ForecastArn => Str

The Amazon Resource Name (ARN) of the forecast to query.



=head2 NextToken => Str

If the result of the previous request was truncated, the response
includes a C<NextToken>. To retrieve the next set of results, use the
token in the next request. Tokens expire after 24 hours.



=head2 StartDate => Str

The start date for the forecast. Specify the date using this format:
yyyy-MM-dd'T'HH:mm:ss'Z' (ISO 8601 format) For example,
"1970-01-01T00:00:00Z."




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method QueryForecast in L<Paws::ForecastQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

