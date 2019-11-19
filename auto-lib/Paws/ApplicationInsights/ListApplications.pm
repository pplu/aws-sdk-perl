# Generated from json/callargs_class.tt

package Paws::ApplicationInsights::ListApplications;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ApplicationInsights::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListApplications');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApplicationInsights::ListApplicationsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::ListApplications - Arguments for method ListApplications on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplications on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method ListApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplications.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $ListApplicationsResponse = $applicationinsights->ListApplications(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $ApplicationInfoList = $ListApplicationsResponse->ApplicationInfoList;
    my $NextToken           = $ListApplicationsResponse->NextToken;

    # Returns a L<Paws::ApplicationInsights::ListApplicationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/ListApplications>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned C<NextToken>
value.



=head2 NextToken => Str

The token to request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplications in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

