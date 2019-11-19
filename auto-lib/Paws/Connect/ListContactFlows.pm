
package Paws::Connect::ListContactFlows;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int/;
  use Paws::Connect::Types qw//;
  has ContactFlowTypes => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has InstanceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListContactFlows');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/contact-flows-summary/{InstanceId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Connect::ListContactFlowsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContactFlowTypes' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'InstanceId' => {
                                 'type' => 'Str'
                               }
             },
  'ParamInQuery' => {
                      'NextToken' => 'nextToken',
                      'MaxResults' => 'maxResults',
                      'ContactFlowTypes' => 'contactFlowTypes'
                    },
  'IsRequired' => {
                    'InstanceId' => 1
                  },
  'ParamInURI' => {
                    'InstanceId' => 'InstanceId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListContactFlows - Arguments for method ListContactFlows on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListContactFlows on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method ListContactFlows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListContactFlows.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $ListContactFlowsResponse = $connect->ListContactFlows(
      InstanceId       => 'MyInstanceId',
      ContactFlowTypes => [
        'CONTACT_FLOW',
        ... # values: CONTACT_FLOW, CUSTOMER_QUEUE, CUSTOMER_HOLD, CUSTOMER_WHISPER, AGENT_HOLD, AGENT_WHISPER, OUTBOUND_WHISPER, AGENT_TRANSFER, QUEUE_TRANSFER
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ContactFlowSummaryList =
      $ListContactFlowsResponse->ContactFlowSummaryList;
    my $NextToken = $ListContactFlowsResponse->NextToken;

    # Returns a L<Paws::Connect::ListContactFlowsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/ListContactFlows>

=head1 ATTRIBUTES


=head2 ContactFlowTypes => ArrayRef[Str|Undef]

The type of contact flow.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 MaxResults => Int

The maximimum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListContactFlows in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

