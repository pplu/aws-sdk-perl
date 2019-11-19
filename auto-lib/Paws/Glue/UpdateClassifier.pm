# Generated from json/callargs_class.tt

package Paws::Glue::UpdateClassifier;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_UpdateGrokClassifierRequest Glue_UpdateXMLClassifierRequest Glue_UpdateJsonClassifierRequest Glue_UpdateCsvClassifierRequest/;
  has CsvClassifier => (is => 'ro', isa => Glue_UpdateCsvClassifierRequest, predicate => 1);
  has GrokClassifier => (is => 'ro', isa => Glue_UpdateGrokClassifierRequest, predicate => 1);
  has JsonClassifier => (is => 'ro', isa => Glue_UpdateJsonClassifierRequest, predicate => 1);
  has XMLClassifier => (is => 'ro', isa => Glue_UpdateXMLClassifierRequest, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateClassifier');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::UpdateClassifierResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'XMLClassifier' => {
                                    'class' => 'Paws::Glue::UpdateXMLClassifierRequest',
                                    'type' => 'Glue_UpdateXMLClassifierRequest'
                                  },
               'CsvClassifier' => {
                                    'class' => 'Paws::Glue::UpdateCsvClassifierRequest',
                                    'type' => 'Glue_UpdateCsvClassifierRequest'
                                  },
               'JsonClassifier' => {
                                     'class' => 'Paws::Glue::UpdateJsonClassifierRequest',
                                     'type' => 'Glue_UpdateJsonClassifierRequest'
                                   },
               'GrokClassifier' => {
                                     'type' => 'Glue_UpdateGrokClassifierRequest',
                                     'class' => 'Paws::Glue::UpdateGrokClassifierRequest'
                                   }
             }
}
;
    return $Params_map;
  }

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


=head2 CsvClassifier => Glue_UpdateCsvClassifierRequest

A C<CsvClassifier> object with updated fields.



=head2 GrokClassifier => Glue_UpdateGrokClassifierRequest

A C<GrokClassifier> object with updated fields.



=head2 JsonClassifier => Glue_UpdateJsonClassifierRequest

A C<JsonClassifier> object with updated fields.



=head2 XMLClassifier => Glue_UpdateXMLClassifierRequest

An C<XMLClassifier> object with updated fields.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateClassifier in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

