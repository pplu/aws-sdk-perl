
package Paws::DevOpsGuru::ListInsights;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StatusFilter => (is => 'ro', isa => 'Paws::DevOpsGuru::ListInsightsStatusFilter', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInsights');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/insights');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::ListInsightsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::ListInsights - Arguments for method ListInsights on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInsights on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method ListInsights.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInsights.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $ListInsightsResponse = $devops -guru->ListInsights(
      StatusFilter => {
        Any => {
          StartTimeRange => {
            FromTime => '1970-01-01T01:00:00',    # OPTIONAL
            ToTime   => '1970-01-01T01:00:00',    # OPTIONAL
          },
          Type => 'REACTIVE',                     # values: REACTIVE, PROACTIVE

        },    # OPTIONAL
        Closed => {
          EndTimeRange => {
            FromTime => '1970-01-01T01:00:00',    # OPTIONAL
            ToTime   => '1970-01-01T01:00:00',    # OPTIONAL
          },
          Type => 'REACTIVE',                     # values: REACTIVE, PROACTIVE

        },    # OPTIONAL
        Ongoing => {
          Type => 'REACTIVE',    # values: REACTIVE, PROACTIVE

        },    # OPTIONAL
      },
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyUuidNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken         = $ListInsightsResponse->NextToken;
    my $ProactiveInsights = $ListInsightsResponse->ProactiveInsights;
    my $ReactiveInsights  = $ListInsightsResponse->ReactiveInsights;

    # Returns a L<Paws::DevOpsGuru::ListInsightsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/ListInsights>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.



=head2 B<REQUIRED> StatusFilter => L<Paws::DevOpsGuru::ListInsightsStatusFilter>

A filter used to filter the returned insights by their status. You can
specify one status filter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInsights in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

