
package Paws::LookoutEquipment::DescribeInferenceScheduler;
  use Moose;
  has InferenceSchedulerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInferenceScheduler');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::DescribeInferenceSchedulerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeInferenceScheduler - Arguments for method DescribeInferenceScheduler on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInferenceScheduler on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method DescribeInferenceScheduler.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInferenceScheduler.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $DescribeInferenceSchedulerResponse =
      $lookoutequipment->DescribeInferenceScheduler(
      InferenceSchedulerName => 'MyInferenceSchedulerIdentifier',

      );

    # Results:
    my $CreatedAt = $DescribeInferenceSchedulerResponse->CreatedAt;
    my $DataDelayOffsetInMinutes =
      $DescribeInferenceSchedulerResponse->DataDelayOffsetInMinutes;
    my $DataInputConfiguration =
      $DescribeInferenceSchedulerResponse->DataInputConfiguration;
    my $DataOutputConfiguration =
      $DescribeInferenceSchedulerResponse->DataOutputConfiguration;
    my $DataUploadFrequency =
      $DescribeInferenceSchedulerResponse->DataUploadFrequency;
    my $InferenceSchedulerArn =
      $DescribeInferenceSchedulerResponse->InferenceSchedulerArn;
    my $InferenceSchedulerName =
      $DescribeInferenceSchedulerResponse->InferenceSchedulerName;
    my $ModelArn  = $DescribeInferenceSchedulerResponse->ModelArn;
    my $ModelName = $DescribeInferenceSchedulerResponse->ModelName;
    my $RoleArn   = $DescribeInferenceSchedulerResponse->RoleArn;
    my $ServerSideKmsKeyId =
      $DescribeInferenceSchedulerResponse->ServerSideKmsKeyId;
    my $Status    = $DescribeInferenceSchedulerResponse->Status;
    my $UpdatedAt = $DescribeInferenceSchedulerResponse->UpdatedAt;

# Returns a L<Paws::LookoutEquipment::DescribeInferenceSchedulerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/DescribeInferenceScheduler>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InferenceSchedulerName => Str

The name of the inference scheduler being described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInferenceScheduler in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

