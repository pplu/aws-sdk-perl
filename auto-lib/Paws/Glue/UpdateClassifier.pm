
package Paws::Glue::UpdateClassifier;
  use Moose;
  has GrokClassifier => (is => 'ro', isa => 'Paws::Glue::UpdateGrokClassifierRequest');
  has JsonClassifier => (is => 'ro', isa => 'Paws::Glue::UpdateJsonClassifierRequest');
  has XMLClassifier => (is => 'ro', isa => 'Paws::Glue::UpdateXMLClassifierRequest');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateClassifier');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateClassifierResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateClassifier - Arguments for method UpdateClassifier on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateClassifier on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateClassifier.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateClassifier.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateClassifierResponse = $glue->UpdateClassifier(
      GrokClassifier => {
        Name           => 'MyNameString',        # min: 1, max: 255
        Classification => 'MyClassification',    # OPTIONAL
        CustomPatterns => 'MyCustomPatterns',    # max: 16000; OPTIONAL
        GrokPattern    => 'MyGrokPattern',       # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
      JsonClassifier => {
        Name     => 'MyNameString',    # min: 1, max: 255
        JsonPath => 'MyJsonPath',      # OPTIONAL
      },    # OPTIONAL
      XMLClassifier => {
        Name           => 'MyNameString',        # min: 1, max: 255
        Classification => 'MyClassification',    # OPTIONAL
        RowTag         => 'MyRowTag',            # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateClassifier>

=head1 ATTRIBUTES


=head2 GrokClassifier => L<Paws::Glue::UpdateGrokClassifierRequest>

A C<GrokClassifier> object with updated fields.



=head2 JsonClassifier => L<Paws::Glue::UpdateJsonClassifierRequest>

A C<JsonClassifier> object with updated fields.



=head2 XMLClassifier => L<Paws::Glue::UpdateXMLClassifierRequest>

An C<XMLClassifier> object with updated fields.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateClassifier in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

