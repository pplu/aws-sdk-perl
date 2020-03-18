package Paws::SageMaker::FlowDefinitionSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has FailureReason => (is => 'ro', isa => 'Str');
  has FlowDefinitionArn => (is => 'ro', isa => 'Str', required => 1);
  has FlowDefinitionName => (is => 'ro', isa => 'Str', required => 1);
  has FlowDefinitionStatus => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::FlowDefinitionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::FlowDefinitionSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., FlowDefinitionStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::FlowDefinitionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Contains summary information about the flow definition.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

  The timestamp when SageMaker created the flow definition.


=head2 FailureReason => Str

  The reason why the flow definition creation failed. A failure reason is
returned only when the flow definition status is C<Failed>.


=head2 B<REQUIRED> FlowDefinitionArn => Str

  The Amazon Resource Name (ARN) of the flow definition.


=head2 B<REQUIRED> FlowDefinitionName => Str

  The name of the flow definition.


=head2 B<REQUIRED> FlowDefinitionStatus => Str

  The status of the flow definition. Valid values:



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

