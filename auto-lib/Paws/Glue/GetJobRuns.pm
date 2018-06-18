
package Paws::Glue::GetJobRuns;
  use Moose;
  has JobName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetJobRuns');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetJobRunsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetJobRuns - Arguments for method GetJobRuns on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJobRuns on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetJobRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJobRuns.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetJobRunsResponse = $glue->GetJobRuns(
      JobName    => 'MyNameString',
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyGenericString',    # OPTIONAL
    );

    # Results:
    my $JobRuns   = $GetJobRunsResponse->JobRuns;
    my $NextToken = $GetJobRunsResponse->NextToken;

    # Returns a L<Paws::Glue::GetJobRunsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetJobRuns>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobName => Str

The name of the job definition for which to retrieve all job runs.



=head2 MaxResults => Int

The maximum size of the response.



=head2 NextToken => Str

A continuation token, if this is a continuation call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJobRuns in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

