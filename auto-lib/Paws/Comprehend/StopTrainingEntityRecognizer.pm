
package Paws::Comprehend::StopTrainingEntityRecognizer;
  use Moose;
  has EntityRecognizerArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopTrainingEntityRecognizer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::StopTrainingEntityRecognizerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StopTrainingEntityRecognizer - Arguments for method StopTrainingEntityRecognizer on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopTrainingEntityRecognizer on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method StopTrainingEntityRecognizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopTrainingEntityRecognizer.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $StopTrainingEntityRecognizerResponse =
      $comprehend->StopTrainingEntityRecognizer(
      EntityRecognizerArn => 'MyEntityRecognizerArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/StopTrainingEntityRecognizer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityRecognizerArn => Str

The Amazon Resource Name (ARN) that identifies the entity recognizer
currently being trained.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopTrainingEntityRecognizer in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

