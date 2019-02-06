
package Paws::SageMaker::ListNotebookInstances;
  use Moose;
  has AdditionalCodeRepositoryEquals => (is => 'ro', isa => 'Str');
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has DefaultCodeRepositoryContains => (is => 'ro', isa => 'Str');
  has LastModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has LastModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has NotebookInstanceLifecycleConfigNameContains => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StatusEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListNotebookInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListNotebookInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListNotebookInstances - Arguments for method ListNotebookInstances on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNotebookInstances on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListNotebookInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNotebookInstances.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListNotebookInstancesOutput = $api . sagemaker->ListNotebookInstances(
      AdditionalCodeRepositoryEquals => 'MyCodeRepositoryNameOrUrl',  # OPTIONAL
      CreationTimeAfter              => '1970-01-01T01:00:00',        # OPTIONAL
      CreationTimeBefore             => '1970-01-01T01:00:00',        # OPTIONAL
      DefaultCodeRepositoryContains  => 'MyCodeRepositoryContains',   # OPTIONAL
      LastModifiedTimeAfter          => '1970-01-01T01:00:00',        # OPTIONAL
      LastModifiedTimeBefore         => '1970-01-01T01:00:00',        # OPTIONAL
      MaxResults                     => 1,                            # OPTIONAL
      NameContains => 'MyNotebookInstanceNameContains',               # OPTIONAL
      NextToken    => 'MyNextToken',                                  # OPTIONAL
      NotebookInstanceLifecycleConfigNameContains =>
        'MyNotebookInstanceLifecycleConfigName',                      # OPTIONAL
      SortBy       => 'Name',                                         # OPTIONAL
      SortOrder    => 'Ascending',                                    # OPTIONAL
      StatusEquals => 'Pending',                                      # OPTIONAL
    );

    # Results:
    my $NextToken         = $ListNotebookInstancesOutput->NextToken;
    my $NotebookInstances = $ListNotebookInstancesOutput->NotebookInstances;

    # Returns a L<Paws::SageMaker::ListNotebookInstancesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListNotebookInstances>

=head1 ATTRIBUTES


=head2 AdditionalCodeRepositoryEquals => Str

A filter that returns only notebook instances with associated with the
specified git repository.



=head2 CreationTimeAfter => Str

A filter that returns only notebook instances that were created after
the specified time (timestamp).



=head2 CreationTimeBefore => Str

A filter that returns only notebook instances that were created before
the specified time (timestamp).



=head2 DefaultCodeRepositoryContains => Str

A string in the name or URL of a Git repository associated with this
notebook instance. This filter returns only notebook instances
associated with a git repository with a name that contains the
specified string.



=head2 LastModifiedTimeAfter => Str

A filter that returns only notebook instances that were modified after
the specified time (timestamp).



=head2 LastModifiedTimeBefore => Str

A filter that returns only notebook instances that were modified before
the specified time (timestamp).



=head2 MaxResults => Int

The maximum number of notebook instances to return.



=head2 NameContains => Str

A string in the notebook instances' name. This filter returns only
notebook instances whose name contains the specified string.



=head2 NextToken => Str

If the previous call to the C<ListNotebookInstances> is truncated, the
response includes a C<NextToken>. You can use this token in your
subsequent C<ListNotebookInstances> request to fetch the next set of
notebook instances.

You might specify a filter or a sort order in your request. When
response is truncated, you must use the same values for the filer and
sort order in the next request.



=head2 NotebookInstanceLifecycleConfigNameContains => Str

A string in the name of a notebook instances lifecycle configuration
associated with this notebook instance. This filter returns only
notebook instances associated with a lifecycle configuration with a
name that contains the specified string.



=head2 SortBy => Str

The field to sort results by. The default is C<Name>.

Valid values are: C<"Name">, C<"CreationTime">, C<"Status">

=head2 SortOrder => Str

The sort order for results.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

A filter that returns only notebook instances with the specified
status.

Valid values are: C<"Pending">, C<"InService">, C<"Stopping">, C<"Stopped">, C<"Failed">, C<"Deleting">, C<"Updating">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNotebookInstances in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

