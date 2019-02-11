
package Paws::Comprehend::DeleteDocumentClassifier;
  use Moose;
  has DocumentClassifierArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDocumentClassifier');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::DeleteDocumentClassifierResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DeleteDocumentClassifier - Arguments for method DeleteDocumentClassifier on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDocumentClassifier on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method DeleteDocumentClassifier.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDocumentClassifier.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $DeleteDocumentClassifierResponse =
      $comprehend->DeleteDocumentClassifier(
      DocumentClassifierArn => 'MyDocumentClassifierArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/DeleteDocumentClassifier>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DocumentClassifierArn => Str

The Amazon Resource Name (ARN) that identifies the document classifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDocumentClassifier in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

