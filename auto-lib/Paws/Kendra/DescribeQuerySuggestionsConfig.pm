
package Paws::Kendra::DescribeQuerySuggestionsConfig;
  use Moose;
  has IndexId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeQuerySuggestionsConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::DescribeQuerySuggestionsConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeQuerySuggestionsConfig - Arguments for method DescribeQuerySuggestionsConfig on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeQuerySuggestionsConfig on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method DescribeQuerySuggestionsConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeQuerySuggestionsConfig.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $DescribeQuerySuggestionsConfigResponse =
      $kendra->DescribeQuerySuggestionsConfig(
      IndexId => 'MyIndexId',

      );

    # Results:
    my $IncludeQueriesWithoutUserInformation =
      $DescribeQuerySuggestionsConfigResponse
      ->IncludeQueriesWithoutUserInformation;
    my $LastClearTime = $DescribeQuerySuggestionsConfigResponse->LastClearTime;
    my $LastSuggestionsBuildTime =
      $DescribeQuerySuggestionsConfigResponse->LastSuggestionsBuildTime;
    my $MinimumNumberOfQueryingUsers =
      $DescribeQuerySuggestionsConfigResponse->MinimumNumberOfQueryingUsers;
    my $MinimumQueryCount =
      $DescribeQuerySuggestionsConfigResponse->MinimumQueryCount;
    my $Mode = $DescribeQuerySuggestionsConfigResponse->Mode;
    my $QueryLogLookBackWindowInDays =
      $DescribeQuerySuggestionsConfigResponse->QueryLogLookBackWindowInDays;
    my $Status = $DescribeQuerySuggestionsConfigResponse->Status;
    my $TotalSuggestionsCount =
      $DescribeQuerySuggestionsConfigResponse->TotalSuggestionsCount;

    # Returns a L<Paws::Kendra::DescribeQuerySuggestionsConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/DescribeQuerySuggestionsConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexId => Str

The identifier of the index you want to describe query suggestions
settings for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeQuerySuggestionsConfig in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

