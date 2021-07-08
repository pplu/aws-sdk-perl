
package Paws::SageMaker::UpdateAction;
  use Moose;
  has ActionName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'Paws::SageMaker::LineageEntityParameters');
  has PropertiesToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateActionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateAction - Arguments for method UpdateAction on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAction on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAction.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateActionResponse = $api . sagemaker->UpdateAction(
      ActionName  => 'MyExperimentEntityName',
      Description => 'MyExperimentDescription',    # OPTIONAL
      Properties  => {
        'MyStringParameterValue' =>
          'MyStringParameterValue',    # key: max: 256, value: max: 256
      },    # OPTIONAL
      PropertiesToRemove => [
        'MyStringParameterValue', ...    # max: 256
      ],    # OPTIONAL
      Status => 'Unknown',    # OPTIONAL
    );

    # Results:
    my $ActionArn = $UpdateActionResponse->ActionArn;

    # Returns a L<Paws::SageMaker::UpdateActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionName => Str

The name of the action to update.



=head2 Description => Str

The new description for the action.



=head2 Properties => L<Paws::SageMaker::LineageEntityParameters>

The new list of properties. Overwrites the current property list.



=head2 PropertiesToRemove => ArrayRef[Str|Undef]

A list of properties to remove.



=head2 Status => Str

The new status for the action.

Valid values are: C<"Unknown">, C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAction in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

