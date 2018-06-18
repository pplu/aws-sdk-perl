
package Paws::Glue::CreateClassifier;
  use Moose;
  has GrokClassifier => (is => 'ro', isa => 'Paws::Glue::CreateGrokClassifierRequest');
  has JsonClassifier => (is => 'ro', isa => 'Paws::Glue::CreateJsonClassifierRequest');
  has XMLClassifier => (is => 'ro', isa => 'Paws::Glue::CreateXMLClassifierRequest');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClassifier');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateClassifierResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateClassifier - Arguments for method CreateClassifier on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateClassifier on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateClassifier.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateClassifier.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateClassifierResponse = $glue->CreateClassifier(
      GrokClassifier => {
        Classification => 'MyClassification',
        GrokPattern    => 'MyGrokPattern',       # min: 1, max: 2048
        Name           => 'MyNameString',        # min: 1, max: 255
        CustomPatterns => 'MyCustomPatterns',    # max: 16000; OPTIONAL
      },    # OPTIONAL
      JsonClassifier => {
        JsonPath => 'MyJsonPath',
        Name     => 'MyNameString',    # min: 1, max: 255

      },    # OPTIONAL
      XMLClassifier => {
        Classification => 'MyClassification',
        Name           => 'MyNameString',       # min: 1, max: 255
        RowTag         => 'MyRowTag',           # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateClassifier>

=head1 ATTRIBUTES


=head2 GrokClassifier => L<Paws::Glue::CreateGrokClassifierRequest>

A C<GrokClassifier> object specifying the classifier to create.



=head2 JsonClassifier => L<Paws::Glue::CreateJsonClassifierRequest>

A C<JsonClassifier> object specifying the classifier to create.



=head2 XMLClassifier => L<Paws::Glue::CreateXMLClassifierRequest>

An C<XMLClassifier> object specifying the classifier to create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateClassifier in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

