
package Paws::IoT::ListMitigationActions;
  use Moose;
  has ActionType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'actionType');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMitigationActions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/mitigationactions/actions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListMitigationActionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListMitigationActions - Arguments for method ListMitigationActions on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMitigationActions on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListMitigationActions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMitigationActions.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListMitigationActionsResponse = $iot->ListMitigationActions(
      ActionType => 'UPDATE_DEVICE_CERTIFICATE',    # OPTIONAL
      MaxResults => 1,                              # OPTIONAL
      NextToken  => 'MyNextToken',                  # OPTIONAL
    );

    # Results:
    my $ActionIdentifiers = $ListMitigationActionsResponse->ActionIdentifiers;
    my $NextToken         = $ListMitigationActionsResponse->NextToken;

    # Returns a L<Paws::IoT::ListMitigationActionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListMitigationActions>

=head1 ATTRIBUTES


=head2 ActionType => Str

Specify a value to limit the result to mitigation actions with a
specific action type.

Valid values are: C<"UPDATE_DEVICE_CERTIFICATE">, C<"UPDATE_CA_CERTIFICATE">, C<"ADD_THINGS_TO_THING_GROUP">, C<"REPLACE_DEFAULT_POLICY_VERSION">, C<"ENABLE_IOT_LOGGING">, C<"PUBLISH_FINDING_TO_SNS">

=head2 MaxResults => Int

The maximum number of results to return at one time. The default is 25.



=head2 NextToken => Str

The token for the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMitigationActions in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

