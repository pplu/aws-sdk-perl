
package Paws::GlueDataBrew::DescribeJobRun;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has RunId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'runId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJobRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs/{name}/jobRun/{runId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::DescribeJobRunResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::DescribeJobRun - Arguments for method DescribeJobRun on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeJobRun on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method DescribeJobRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeJobRun.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $DescribeJobRunResponse = $databrew->DescribeJobRun(
      Name  => 'MyJobName',
      RunId => 'MyJobRunId',

    );

    # Results:
    my $Attempt         = $DescribeJobRunResponse->Attempt;
    my $CompletedOn     = $DescribeJobRunResponse->CompletedOn;
    my $DatasetName     = $DescribeJobRunResponse->DatasetName;
    my $ErrorMessage    = $DescribeJobRunResponse->ErrorMessage;
    my $ExecutionTime   = $DescribeJobRunResponse->ExecutionTime;
    my $JobName         = $DescribeJobRunResponse->JobName;
    my $JobSample       = $DescribeJobRunResponse->JobSample;
    my $LogGroupName    = $DescribeJobRunResponse->LogGroupName;
    my $LogSubscription = $DescribeJobRunResponse->LogSubscription;
    my $Outputs         = $DescribeJobRunResponse->Outputs;
    my $RecipeReference = $DescribeJobRunResponse->RecipeReference;
    my $RunId           = $DescribeJobRunResponse->RunId;
    my $StartedBy       = $DescribeJobRunResponse->StartedBy;
    my $StartedOn       = $DescribeJobRunResponse->StartedOn;
    my $State           = $DescribeJobRunResponse->State;

    # Returns a L<Paws::GlueDataBrew::DescribeJobRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/DescribeJobRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the job being processed during this run.



=head2 B<REQUIRED> RunId => Str

The unique identifier of the job run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeJobRun in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

