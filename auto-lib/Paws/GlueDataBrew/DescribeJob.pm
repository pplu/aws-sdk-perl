
package Paws::GlueDataBrew::DescribeJob;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::DescribeJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::DescribeJob - Arguments for method DescribeJob on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeJob on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method DescribeJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeJob.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $DescribeJobResponse = $databrew->DescribeJob(
      Name => 'MyJobName',

    );

    # Results:
    my $CreateDate         = $DescribeJobResponse->CreateDate;
    my $CreatedBy          = $DescribeJobResponse->CreatedBy;
    my $DataCatalogOutputs = $DescribeJobResponse->DataCatalogOutputs;
    my $DatasetName        = $DescribeJobResponse->DatasetName;
    my $EncryptionKeyArn   = $DescribeJobResponse->EncryptionKeyArn;
    my $EncryptionMode     = $DescribeJobResponse->EncryptionMode;
    my $JobSample          = $DescribeJobResponse->JobSample;
    my $LastModifiedBy     = $DescribeJobResponse->LastModifiedBy;
    my $LastModifiedDate   = $DescribeJobResponse->LastModifiedDate;
    my $LogSubscription    = $DescribeJobResponse->LogSubscription;
    my $MaxCapacity        = $DescribeJobResponse->MaxCapacity;
    my $MaxRetries         = $DescribeJobResponse->MaxRetries;
    my $Name               = $DescribeJobResponse->Name;
    my $Outputs            = $DescribeJobResponse->Outputs;
    my $ProjectName        = $DescribeJobResponse->ProjectName;
    my $RecipeReference    = $DescribeJobResponse->RecipeReference;
    my $ResourceArn        = $DescribeJobResponse->ResourceArn;
    my $RoleArn            = $DescribeJobResponse->RoleArn;
    my $Tags               = $DescribeJobResponse->Tags;
    my $Timeout            = $DescribeJobResponse->Timeout;
    my $Type               = $DescribeJobResponse->Type;

    # Returns a L<Paws::GlueDataBrew::DescribeJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/DescribeJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the job to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeJob in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

