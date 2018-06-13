
package Paws::CodePipeline::ListWebhooks;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWebhooks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::ListWebhooksOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListWebhooks - Arguments for method ListWebhooks on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWebhooks on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method ListWebhooks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWebhooks.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $ListWebhooksOutput = $codepipeline->ListWebhooks(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListWebhooksOutput->NextToken;
    my $Webhooks  = $ListWebhooksOutput->Webhooks;

    # Returns a L<Paws::CodePipeline::ListWebhooksOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/ListWebhooks>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned nextToken
value.



=head2 NextToken => Str

The token that was returned from the previous ListWebhooks call, which
can be used to return the next set of webhooks in the list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWebhooks in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

