# Generated from json/callargs_class.tt

package Paws::Glue::CreateClassifier;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_CreateGrokClassifierRequest Glue_CreateCsvClassifierRequest Glue_CreateJsonClassifierRequest Glue_CreateXMLClassifierRequest/;
  has CsvClassifier => (is => 'ro', isa => Glue_CreateCsvClassifierRequest, predicate => 1);
  has GrokClassifier => (is => 'ro', isa => Glue_CreateGrokClassifierRequest, predicate => 1);
  has JsonClassifier => (is => 'ro', isa => Glue_CreateJsonClassifierRequest, predicate => 1);
  has XMLClassifier => (is => 'ro', isa => Glue_CreateXMLClassifierRequest, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateClassifier');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::CreateClassifierResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GrokClassifier' => {
                                     'class' => 'Paws::Glue::CreateGrokClassifierRequest',
                                     'type' => 'Glue_CreateGrokClassifierRequest'
                                   },
               'JsonClassifier' => {
                                     'class' => 'Paws::Glue::CreateJsonClassifierRequest',
                                     'type' => 'Glue_CreateJsonClassifierRequest'
                                   },
               'CsvClassifier' => {
                                    'class' => 'Paws::Glue::CreateCsvClassifierRequest',
                                    'type' => 'Glue_CreateCsvClassifierRequest'
                                  },
               'XMLClassifier' => {
                                    'class' => 'Paws::Glue::CreateXMLClassifierRequest',
                                    'type' => 'Glue_CreateXMLClassifierRequest'
                                  }
             }
}
;
    return $Params_map;
  }

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
      CsvClassifier => {
        Name              => 'MyNameString',    # min: 1, max: 255
        AllowSingleColumn => 1,                 # OPTIONAL
        ContainsHeader =>
          'UNKNOWN',    # values: UNKNOWN, PRESENT, ABSENT; OPTIONAL
        Delimiter => 'MyCsvColumnDelimiter',    # min: 1, max: 1; OPTIONAL
        DisableValueTrimming => 1,              # OPTIONAL
        Header               => [
          'MyNameString', ...                   # min: 1, max: 255
        ],                                      # OPTIONAL
        QuoteSymbol => 'MyCsvQuoteSymbol',      # min: 1, max: 1; OPTIONAL
      },    # OPTIONAL
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


=head2 CsvClassifier => Glue_CreateCsvClassifierRequest

A C<CsvClassifier> object specifying the classifier to create.



=head2 GrokClassifier => Glue_CreateGrokClassifierRequest

A C<GrokClassifier> object specifying the classifier to create.



=head2 JsonClassifier => Glue_CreateJsonClassifierRequest

A C<JsonClassifier> object specifying the classifier to create.



=head2 XMLClassifier => Glue_CreateXMLClassifierRequest

An C<XMLClassifier> object specifying the classifier to create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateClassifier in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

