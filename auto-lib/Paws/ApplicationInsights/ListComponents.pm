# Generated from json/callargs_class.tt

package Paws::ApplicationInsights::ListComponents;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ApplicationInsights::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ResourceGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListComponents');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApplicationInsights::ListComponentsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceGroupName' => 1
                  },
  'types' => {
               'ResourceGroupName' => {
                                        'type' => 'Str'
                                      },
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

Paws::ApplicationInsights::ListComponents - Arguments for method ListComponents on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListComponents on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method ListComponents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListComponents.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $ListComponentsResponse = $applicationinsights->ListComponents(
      ResourceGroupName => 'MyResourceGroupName',
      MaxResults        => 1,                       # OPTIONAL
      NextToken         => 'MyPaginationToken',     # OPTIONAL
    );

    # Results:
    my $ApplicationComponentList =
      $ListComponentsResponse->ApplicationComponentList;
    my $NextToken = $ListComponentsResponse->NextToken;

    # Returns a L<Paws::ApplicationInsights::ListComponentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/ListComponents>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned C<NextToken>
value.



=head2 NextToken => Str

The token to request the next page of results.



=head2 B<REQUIRED> ResourceGroupName => Str

The name of the resource group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListComponents in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

