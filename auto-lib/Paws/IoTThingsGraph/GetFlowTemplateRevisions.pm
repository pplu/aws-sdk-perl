
package Paws::IoTThingsGraph::GetFlowTemplateRevisions;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFlowTemplateRevisions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTThingsGraph::GetFlowTemplateRevisionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::GetFlowTemplateRevisions - Arguments for method GetFlowTemplateRevisions on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFlowTemplateRevisions on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method GetFlowTemplateRevisions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFlowTemplateRevisions.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $GetFlowTemplateRevisionsResponse =
      $iotthingsgraph->GetFlowTemplateRevisions(
      Id         => 'MyUrn',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $GetFlowTemplateRevisionsResponse->NextToken;
    my $Summaries = $GetFlowTemplateRevisionsResponse->Summaries;

   # Returns a L<Paws::IoTThingsGraph::GetFlowTemplateRevisionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/GetFlowTemplateRevisions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the workflow.

The ID should be in the following format.

C<urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME>



=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

The string that specifies the next page of results. Use this when
you're paginating results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFlowTemplateRevisions in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

