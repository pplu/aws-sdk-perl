
package Paws::CodePipeline::ListPipelines;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPipelines');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::ListPipelinesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListPipelines - Arguments for method ListPipelines on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPipelines on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method ListPipelines.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPipelines.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $ListPipelinesOutput = $codepipeline->ListPipelines(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListPipelinesOutput->NextToken;
    my $Pipelines = $ListPipelinesOutput->Pipelines;

    # Returns a L<Paws::CodePipeline::ListPipelinesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/ListPipelines>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of pipelines to return in a single call. To retrieve
the remaining pipelines, make another call with the returned nextToken
value. The minimum value you can specify is 1. The maximum accepted
value is 1000.



=head2 NextToken => Str

An identifier that was returned from the previous list pipelines call.
It can be used to return the next set of pipelines in the list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPipelines in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

