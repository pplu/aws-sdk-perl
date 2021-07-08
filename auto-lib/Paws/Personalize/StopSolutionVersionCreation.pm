
package Paws::Personalize::StopSolutionVersionCreation;
  use Moose;
  has SolutionVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'solutionVersionArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopSolutionVersionCreation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::StopSolutionVersionCreation - Arguments for method StopSolutionVersionCreation on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopSolutionVersionCreation on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method StopSolutionVersionCreation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopSolutionVersionCreation.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    $personalize->StopSolutionVersionCreation(
      SolutionVersionArn => 'MyArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/StopSolutionVersionCreation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SolutionVersionArn => Str

The Amazon Resource Name (ARN) of the solution version you want to stop
creating.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopSolutionVersionCreation in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

