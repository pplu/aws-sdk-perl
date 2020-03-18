package Paws::SageMakerA2IRuntime::HumanLoopSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has FlowDefinitionArn => (is => 'ro', isa => 'Str');
  has HumanLoopName => (is => 'ro', isa => 'Str');
  has HumanLoopStatus => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerA2IRuntime::HumanLoopSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMakerA2IRuntime::HumanLoopSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., HumanLoopStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMakerA2IRuntime::HumanLoopSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Summary information about the human loop.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  When Amazon Augmented AI created the human loop.


=head2 FailureReason => Str

  The reason why the human loop failed. A failure reason is returned only
when the status of the human loop is C<Failed>.


=head2 FlowDefinitionArn => Str

  The Amazon Resource Name (ARN) of the flow definition.


=head2 HumanLoopName => Str

  The name of the human loop.


=head2 HumanLoopStatus => Str

  The status of the human loop. Valid values:



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMakerA2IRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

