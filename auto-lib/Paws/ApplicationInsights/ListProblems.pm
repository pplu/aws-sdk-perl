# Generated from json/callargs_class.tt

package Paws::ApplicationInsights::ListProblems;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ApplicationInsights::Types qw//;
  has EndTime => (is => 'ro', isa => Str, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ResourceGroupName => (is => 'ro', isa => Str, predicate => 1);
  has StartTime => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListProblems');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApplicationInsights::ListProblemsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceGroupName' => {
                                        'type' => 'Str'
                                      },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::ListProblems - Arguments for method ListProblems on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProblems on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method ListProblems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProblems.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $ListProblemsResponse = $applicationinsights->ListProblems(
      EndTime           => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults        => 1,                        # OPTIONAL
      NextToken         => 'MyPaginationToken',      # OPTIONAL
      ResourceGroupName => 'MyResourceGroupName',    # OPTIONAL
      StartTime         => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $NextToken   = $ListProblemsResponse->NextToken;
    my $ProblemList = $ListProblemsResponse->ProblemList;

    # Returns a L<Paws::ApplicationInsights::ListProblemsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/ListProblems>

=head1 ATTRIBUTES


=head2 EndTime => Str

The time when the problem ended, in epoch seconds. If not specified,
problems within the past seven days are returned.



=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned C<NextToken>
value.



=head2 NextToken => Str

The token to request the next page of results.



=head2 ResourceGroupName => Str

The name of the resource group.



=head2 StartTime => Str

The time when the problem was detected, in epoch seconds. If you don't
specify a time frame for the request, problems within the past seven
days are returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProblems in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

