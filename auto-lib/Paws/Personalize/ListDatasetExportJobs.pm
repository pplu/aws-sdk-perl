
package Paws::Personalize::ListDatasetExportJobs;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetArn' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDatasetExportJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::ListDatasetExportJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListDatasetExportJobs - Arguments for method ListDatasetExportJobs on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDatasetExportJobs on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method ListDatasetExportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDatasetExportJobs.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $ListDatasetExportJobsResponse = $personalize->ListDatasetExportJobs(
      DatasetArn => 'MyArn',          # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $DatasetExportJobs = $ListDatasetExportJobsResponse->DatasetExportJobs;
    my $NextToken         = $ListDatasetExportJobsResponse->NextToken;

    # Returns a L<Paws::Personalize::ListDatasetExportJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/ListDatasetExportJobs>

=head1 ATTRIBUTES


=head2 DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset to list the dataset
export jobs for.



=head2 MaxResults => Int

The maximum number of dataset export jobs to return.



=head2 NextToken => Str

A token returned from the previous call to C<ListDatasetExportJobs> for
getting the next set of dataset export jobs (if they exist).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDatasetExportJobs in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

