
package Paws::SageMaker::DescribeNotebookInstance;
  use Moose;
  has NotebookInstanceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNotebookInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeNotebookInstanceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeNotebookInstance - Arguments for method DescribeNotebookInstance on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNotebookInstance on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeNotebookInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNotebookInstance.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeNotebookInstanceOutput =
      $api . sagemaker->DescribeNotebookInstance(
      NotebookInstanceName => 'MyNotebookInstanceName',

      );

    # Results:
    my $AcceleratorTypes = $DescribeNotebookInstanceOutput->AcceleratorTypes;
    my $AdditionalCodeRepositories =
      $DescribeNotebookInstanceOutput->AdditionalCodeRepositories;
    my $CreationTime = $DescribeNotebookInstanceOutput->CreationTime;
    my $DefaultCodeRepository =
      $DescribeNotebookInstanceOutput->DefaultCodeRepository;
    my $DirectInternetAccess =
      $DescribeNotebookInstanceOutput->DirectInternetAccess;
    my $FailureReason    = $DescribeNotebookInstanceOutput->FailureReason;
    my $InstanceType     = $DescribeNotebookInstanceOutput->InstanceType;
    my $KmsKeyId         = $DescribeNotebookInstanceOutput->KmsKeyId;
    my $LastModifiedTime = $DescribeNotebookInstanceOutput->LastModifiedTime;
    my $NetworkInterfaceId =
      $DescribeNotebookInstanceOutput->NetworkInterfaceId;
    my $NotebookInstanceArn =
      $DescribeNotebookInstanceOutput->NotebookInstanceArn;
    my $NotebookInstanceLifecycleConfigName =
      $DescribeNotebookInstanceOutput->NotebookInstanceLifecycleConfigName;
    my $NotebookInstanceName =
      $DescribeNotebookInstanceOutput->NotebookInstanceName;
    my $NotebookInstanceStatus =
      $DescribeNotebookInstanceOutput->NotebookInstanceStatus;
    my $RoleArn        = $DescribeNotebookInstanceOutput->RoleArn;
    my $SecurityGroups = $DescribeNotebookInstanceOutput->SecurityGroups;
    my $SubnetId       = $DescribeNotebookInstanceOutput->SubnetId;
    my $Url            = $DescribeNotebookInstanceOutput->Url;
    my $VolumeSizeInGB = $DescribeNotebookInstanceOutput->VolumeSizeInGB;

    # Returns a L<Paws::SageMaker::DescribeNotebookInstanceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeNotebookInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NotebookInstanceName => Str

The name of the notebook instance that you want information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNotebookInstance in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

