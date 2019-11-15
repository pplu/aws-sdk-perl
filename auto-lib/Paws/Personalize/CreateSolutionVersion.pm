
package Paws::Personalize::CreateSolutionVersion;
  use Moose;
  has SolutionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'solutionArn' , required => 1);
  has TrainingMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainingMode' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSolutionVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::CreateSolutionVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateSolutionVersion - Arguments for method CreateSolutionVersion on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSolutionVersion on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method CreateSolutionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSolutionVersion.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $CreateSolutionVersionResponse = $personalize->CreateSolutionVersion(
      SolutionArn  => 'MyArn',
      TrainingMode => 'FULL',    # OPTIONAL
    );

    # Results:
    my $SolutionVersionArn = $CreateSolutionVersionResponse->SolutionVersionArn;

    # Returns a L<Paws::Personalize::CreateSolutionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/CreateSolutionVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SolutionArn => Str

The Amazon Resource Name (ARN) of the solution containing the training
configuration information.



=head2 TrainingMode => Str

The scope of training to be performed when creating the solution
version. The C<FULL> option trains the solution version based on the
entirety of the input solution's training data, while the C<UPDATE>
option processes only the data that has changed in comparison to the
input solution. Choose C<UPDATE> when you want to incrementally update
your solution version instead of creating an entirely new one.

The C<UPDATE> option can only be used when you already have an active
solution version created from the input solution using the C<FULL>
option and the input solution was trained with the
native-recipe-hrnn-coldstart recipe.

Valid values are: C<"FULL">, C<"UPDATE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSolutionVersion in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

