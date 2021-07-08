
package Paws::IoT::ListAuditMitigationActionsExecutions;
  use Moose;
  has ActionStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'actionStatus');
  has FindingId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'findingId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TaskId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'taskId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAuditMitigationActionsExecutions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/mitigationactions/executions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListAuditMitigationActionsExecutionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAuditMitigationActionsExecutions - Arguments for method ListAuditMitigationActionsExecutions on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAuditMitigationActionsExecutions on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListAuditMitigationActionsExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAuditMitigationActionsExecutions.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListAuditMitigationActionsExecutionsResponse =
      $iot->ListAuditMitigationActionsExecutions(
      FindingId    => 'MyFindingId',
      TaskId       => 'MyMitigationActionsTaskId',
      ActionStatus => 'IN_PROGRESS',                 # OPTIONAL
      MaxResults   => 1,                             # OPTIONAL
      NextToken    => 'MyNextToken',                 # OPTIONAL
      );

    # Results:
    my $ActionsExecutions =
      $ListAuditMitigationActionsExecutionsResponse->ActionsExecutions;
    my $NextToken = $ListAuditMitigationActionsExecutionsResponse->NextToken;

  # Returns a L<Paws::IoT::ListAuditMitigationActionsExecutionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListAuditMitigationActionsExecutions>

=head1 ATTRIBUTES


=head2 ActionStatus => Str

Specify this filter to limit results to those with a specific status.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"CANCELED">, C<"SKIPPED">, C<"PENDING">

=head2 B<REQUIRED> FindingId => Str

Specify this filter to limit results to those that were applied to a
specific audit finding.



=head2 MaxResults => Int

The maximum number of results to return at one time. The default is 25.



=head2 NextToken => Str

The token for the next set of results.



=head2 B<REQUIRED> TaskId => Str

Specify this filter to limit results to actions for a specific audit
mitigation actions task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAuditMitigationActionsExecutions in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

