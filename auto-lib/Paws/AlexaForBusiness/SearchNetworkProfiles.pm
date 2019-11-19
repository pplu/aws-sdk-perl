# Generated from json/callargs_class.tt

package Paws::AlexaForBusiness::SearchNetworkProfiles;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_Filter AlexaForBusiness_Sort/;
  has Filters => (is => 'ro', isa => ArrayRef[AlexaForBusiness_Filter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has SortCriteria => (is => 'ro', isa => ArrayRef[AlexaForBusiness_Sort], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SearchNetworkProfiles');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AlexaForBusiness::SearchNetworkProfilesResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SortCriteria' => {
                                   'type' => 'ArrayRef[AlexaForBusiness_Sort]',
                                   'class' => 'Paws::AlexaForBusiness::Sort'
                                 },
               'Filters' => {
                              'type' => 'ArrayRef[AlexaForBusiness_Filter]',
                              'class' => 'Paws::AlexaForBusiness::Filter'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchNetworkProfiles - Arguments for method SearchNetworkProfiles on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchNetworkProfiles on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method SearchNetworkProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchNetworkProfiles.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $SearchNetworkProfilesResponse = $a4b->SearchNetworkProfiles(
      Filters => [
        {
          Key    => 'MyFilterKey',    # min: 1, max: 500
          Values => [
            'MyFilterValue', ...      # min: 1, max: 500
          ],                          # max: 50

        },
        ...
      ],                              # OPTIONAL
      MaxResults   => 1,              # OPTIONAL
      NextToken    => 'MyNextToken',  # OPTIONAL
      SortCriteria => [
        {
          Key   => 'MySortKey',       # min: 1, max: 500
          Value => 'ASC',             # values: ASC, DESC

        },
        ...
      ],                              # OPTIONAL
    );

    # Results:
    my $NetworkProfiles = $SearchNetworkProfilesResponse->NetworkProfiles;
    my $NextToken       = $SearchNetworkProfilesResponse->NextToken;
    my $TotalCount      = $SearchNetworkProfilesResponse->TotalCount;

    # Returns a L<Paws::AlexaForBusiness::SearchNetworkProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/SearchNetworkProfiles>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[AlexaForBusiness_Filter]

The filters to use to list a specified set of network profiles. Valid
filters are NetworkProfileName, Ssid, and SecurityType.



=head2 MaxResults => Int

The maximum number of results to include in the response. If more
results exist than the specified MaxResults value, a token is included
in the response so that the remaining results can be retrieved.



=head2 NextToken => Str

An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token, up to the value
specified by MaxResults.



=head2 SortCriteria => ArrayRef[AlexaForBusiness_Sort]

The sort order to use to list the specified set of network profiles.
Valid sort criteria includes NetworkProfileName, Ssid, and
SecurityType.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchNetworkProfiles in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

