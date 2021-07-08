
package Paws::FIS::ListActions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListActions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/actions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FIS::ListActionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::ListActions - Arguments for method ListActions on L<Paws::FIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListActions on the
L<AWS Fault Injection Simulator|Paws::FIS> service. Use the attributes of this class
as arguments to method ListActions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListActions.

=head1 SYNOPSIS

    my $fis = Paws->service('FIS');
    my $ListActionsResponse = $fis->ListActions(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Actions   = $ListActionsResponse->Actions;
    my $NextToken = $ListActionsResponse->NextToken;

    # Returns a L<Paws::FIS::ListActionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fis/ListActions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListActions in L<Paws::FIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

