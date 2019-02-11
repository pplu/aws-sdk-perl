
package Paws::CloudFormation::DescribeStackDriftDetectionStatus;
  use Moose;
  has StackDriftDetectionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackDriftDetectionStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribeStackDriftDetectionStatusOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackDriftDetectionStatusResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackDriftDetectionStatus - Arguments for method DescribeStackDriftDetectionStatus on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStackDriftDetectionStatus on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DescribeStackDriftDetectionStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStackDriftDetectionStatus.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DescribeStackDriftDetectionStatusOutput =
      $cloudformation->DescribeStackDriftDetectionStatus(
      StackDriftDetectionId => 'MyStackDriftDetectionId',

      );

    # Results:
    my $DetectionStatus =
      $DescribeStackDriftDetectionStatusOutput->DetectionStatus;
    my $DetectionStatusReason =
      $DescribeStackDriftDetectionStatusOutput->DetectionStatusReason;
    my $DriftedStackResourceCount =
      $DescribeStackDriftDetectionStatusOutput->DriftedStackResourceCount;
    my $StackDriftDetectionId =
      $DescribeStackDriftDetectionStatusOutput->StackDriftDetectionId;
    my $StackDriftStatus =
      $DescribeStackDriftDetectionStatusOutput->StackDriftStatus;
    my $StackId   = $DescribeStackDriftDetectionStatusOutput->StackId;
    my $Timestamp = $DescribeStackDriftDetectionStatusOutput->Timestamp;

# Returns a L<Paws::CloudFormation::DescribeStackDriftDetectionStatusOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribeStackDriftDetectionStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StackDriftDetectionId => Str

The ID of the drift detection results of this operation.

AWS CloudFormation generates new results, with a new drift detection
ID, each time this operation is run. However, the number of drift
results AWS CloudFormation retains for any given stack, and for how
long, may vary.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStackDriftDetectionStatus in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

