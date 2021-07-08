
package Paws::SageMakerA2IRuntime::ListHumanLoops;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'CreationTimeAfter');
  has CreationTimeBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'CreationTimeBefore');
  has FlowDefinitionArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'FlowDefinitionArn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'SortOrder');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHumanLoops');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/human-loops');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerA2IRuntime::ListHumanLoopsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerA2IRuntime::ListHumanLoops - Arguments for method ListHumanLoops on L<Paws::SageMakerA2IRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHumanLoops on the
L<Amazon Augmented AI Runtime|Paws::SageMakerA2IRuntime> service. Use the attributes of this class
as arguments to method ListHumanLoops.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHumanLoops.

=head1 SYNOPSIS

    my $a2i-runtime.sagemaker = Paws->service('SageMakerA2IRuntime');
    my $ListHumanLoopsResponse = $a2i -runtime . sagemaker->ListHumanLoops(
      FlowDefinitionArn  => 'MyFlowDefinitionArn',
      CreationTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults         => 1,                        # OPTIONAL
      NextToken          => 'MyNextToken',            # OPTIONAL
      SortOrder          => 'Ascending',              # OPTIONAL
    );

    # Results:
    my $HumanLoopSummaries = $ListHumanLoopsResponse->HumanLoopSummaries;
    my $NextToken          = $ListHumanLoopsResponse->NextToken;

    # Returns a L<Paws::SageMakerA2IRuntime::ListHumanLoopsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a2i-runtime.sagemaker/ListHumanLoops>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

(Optional) The timestamp of the date when you want the human loops to
begin in ISO 8601 format. For example, C<2020-02-24>.



=head2 CreationTimeBefore => Str

(Optional) The timestamp of the date before which you want the human
loops to begin in ISO 8601 format. For example, C<2020-02-24>.



=head2 B<REQUIRED> FlowDefinitionArn => Str

The Amazon Resource Name (ARN) of a flow definition.



=head2 MaxResults => Int

The total number of items to return. If the total number of available
items is more than the value specified in C<MaxResults>, then a
C<NextToken> is returned in the output. You can use this token to
display the next page of results.



=head2 NextToken => Str

A token to display the next page of results.



=head2 SortOrder => Str

Optional. The order for displaying results. Valid values: C<Ascending>
and C<Descending>.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHumanLoops in L<Paws::SageMakerA2IRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

