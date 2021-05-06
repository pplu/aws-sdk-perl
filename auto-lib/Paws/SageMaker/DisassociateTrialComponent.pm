
package Paws::SageMaker::DisassociateTrialComponent;
  use Moose;
  has TrialComponentName => (is => 'ro', isa => 'Str', required => 1);
  has TrialName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateTrialComponent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DisassociateTrialComponentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DisassociateTrialComponent - Arguments for method DisassociateTrialComponent on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateTrialComponent on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DisassociateTrialComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateTrialComponent.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DisassociateTrialComponentResponse =
      $api . sagemaker->DisassociateTrialComponent(
      TrialComponentName => 'MyExperimentEntityName',
      TrialName          => 'MyExperimentEntityName',

      );

    # Results:
    my $TrialArn = $DisassociateTrialComponentResponse->TrialArn;
    my $TrialComponentArn =
      $DisassociateTrialComponentResponse->TrialComponentArn;

    # Returns a L<Paws::SageMaker::DisassociateTrialComponentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DisassociateTrialComponent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrialComponentName => Str

The name of the component to disassociate from the trial.



=head2 B<REQUIRED> TrialName => Str

The name of the trial to disassociate from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateTrialComponent in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

