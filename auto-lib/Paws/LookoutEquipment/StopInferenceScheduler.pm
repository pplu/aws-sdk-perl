
package Paws::LookoutEquipment::StopInferenceScheduler;
  use Moose;
  has InferenceSchedulerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopInferenceScheduler');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::StopInferenceSchedulerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::StopInferenceScheduler - Arguments for method StopInferenceScheduler on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopInferenceScheduler on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method StopInferenceScheduler.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopInferenceScheduler.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $StopInferenceSchedulerResponse =
      $lookoutequipment->StopInferenceScheduler(
      InferenceSchedulerName => 'MyInferenceSchedulerIdentifier',

      );

    # Results:
    my $InferenceSchedulerArn =
      $StopInferenceSchedulerResponse->InferenceSchedulerArn;
    my $InferenceSchedulerName =
      $StopInferenceSchedulerResponse->InferenceSchedulerName;
    my $ModelArn  = $StopInferenceSchedulerResponse->ModelArn;
    my $ModelName = $StopInferenceSchedulerResponse->ModelName;
    my $Status    = $StopInferenceSchedulerResponse->Status;

   # Returns a L<Paws::LookoutEquipment::StopInferenceSchedulerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/StopInferenceScheduler>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InferenceSchedulerName => Str

The name of the inference scheduler to be stopped.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopInferenceScheduler in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

