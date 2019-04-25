
package Paws::SageMaker::ListNotebookInstanceLifecycleConfigs;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has LastModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has LastModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListNotebookInstanceLifecycleConfigs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListNotebookInstanceLifecycleConfigsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListNotebookInstanceLifecycleConfigs - Arguments for method ListNotebookInstanceLifecycleConfigs on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNotebookInstanceLifecycleConfigs on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListNotebookInstanceLifecycleConfigs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNotebookInstanceLifecycleConfigs.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListNotebookInstanceLifecycleConfigsOutput =
      $api . sagemaker->ListNotebookInstanceLifecycleConfigs(
      CreationTimeAfter      => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore     => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults             => 1,                        # OPTIONAL
      NameContains =>
        'MyNotebookInstanceLifecycleConfigNameContains',    # OPTIONAL
      NextToken => 'MyNextToken',                           # OPTIONAL
      SortBy    => 'Name',                                  # OPTIONAL
      SortOrder => 'Ascending',                             # OPTIONAL
      );

    # Results:
    my $NextToken = $ListNotebookInstanceLifecycleConfigsOutput->NextToken;
    my $NotebookInstanceLifecycleConfigs =
      $ListNotebookInstanceLifecycleConfigsOutput
      ->NotebookInstanceLifecycleConfigs;

# Returns a L<Paws::SageMaker::ListNotebookInstanceLifecycleConfigsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListNotebookInstanceLifecycleConfigs>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only lifecycle configurations that were created
after the specified time (timestamp).



=head2 CreationTimeBefore => Str

A filter that returns only lifecycle configurations that were created
before the specified time (timestamp).



=head2 LastModifiedTimeAfter => Str

A filter that returns only lifecycle configurations that were modified
after the specified time (timestamp).



=head2 LastModifiedTimeBefore => Str

A filter that returns only lifecycle configurations that were modified
before the specified time (timestamp).



=head2 MaxResults => Int

The maximum number of lifecycle configurations to return in the
response.



=head2 NameContains => Str

A string in the lifecycle configuration name. This filter returns only
lifecycle configurations whose name contains the specified string.



=head2 NextToken => Str

If the result of a C<ListNotebookInstanceLifecycleConfigs> request was
truncated, the response includes a C<NextToken>. To get the next set of
lifecycle configurations, use the token in the next request.



=head2 SortBy => Str

Sorts the list of results. The default is C<CreationTime>.

Valid values are: C<"Name">, C<"CreationTime">, C<"LastModifiedTime">

=head2 SortOrder => Str

The sort order for results.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNotebookInstanceLifecycleConfigs in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

