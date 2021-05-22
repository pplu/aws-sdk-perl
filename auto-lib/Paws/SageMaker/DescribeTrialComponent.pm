
package Paws::SageMaker::DescribeTrialComponent;
  use Moose;
  has TrialComponentName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrialComponent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeTrialComponentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeTrialComponent - Arguments for method DescribeTrialComponent on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrialComponent on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeTrialComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrialComponent.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeTrialComponentResponse =
      $api . sagemaker->DescribeTrialComponent(
      TrialComponentName => 'MyExperimentEntityName',

      );

    # Results:
    my $CreatedBy        = $DescribeTrialComponentResponse->CreatedBy;
    my $CreationTime     = $DescribeTrialComponentResponse->CreationTime;
    my $DisplayName      = $DescribeTrialComponentResponse->DisplayName;
    my $EndTime          = $DescribeTrialComponentResponse->EndTime;
    my $InputArtifacts   = $DescribeTrialComponentResponse->InputArtifacts;
    my $LastModifiedBy   = $DescribeTrialComponentResponse->LastModifiedBy;
    my $LastModifiedTime = $DescribeTrialComponentResponse->LastModifiedTime;
    my $MetadataProperties =
      $DescribeTrialComponentResponse->MetadataProperties;
    my $Metrics           = $DescribeTrialComponentResponse->Metrics;
    my $OutputArtifacts   = $DescribeTrialComponentResponse->OutputArtifacts;
    my $Parameters        = $DescribeTrialComponentResponse->Parameters;
    my $Source            = $DescribeTrialComponentResponse->Source;
    my $StartTime         = $DescribeTrialComponentResponse->StartTime;
    my $Status            = $DescribeTrialComponentResponse->Status;
    my $TrialComponentArn = $DescribeTrialComponentResponse->TrialComponentArn;
    my $TrialComponentName =
      $DescribeTrialComponentResponse->TrialComponentName;

    # Returns a L<Paws::SageMaker::DescribeTrialComponentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeTrialComponent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrialComponentName => Str

The name of the trial component to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrialComponent in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

