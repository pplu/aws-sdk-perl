# Generated from json/callargs_class.tt

package Paws::Comprehend::ListDocumentClassifiers;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Comprehend::Types qw/Comprehend_DocumentClassifierFilter/;
  has Filter => (is => 'ro', isa => Comprehend_DocumentClassifierFilter, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListDocumentClassifiers');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Comprehend::ListDocumentClassifiersResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Filter' => {
                             'class' => 'Paws::Comprehend::DocumentClassifierFilter',
                             'type' => 'Comprehend_DocumentClassifierFilter'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListDocumentClassifiers - Arguments for method ListDocumentClassifiers on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDocumentClassifiers on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method ListDocumentClassifiers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDocumentClassifiers.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $ListDocumentClassifiersResponse = $comprehend->ListDocumentClassifiers(
      Filter => {
        Status => 'SUBMITTED'
        , # values: SUBMITTED, TRAINING, DELETING, STOP_REQUESTED, STOPPED, IN_ERROR, TRAINED; OPTIONAL
        SubmitTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
        SubmitTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $DocumentClassifierPropertiesList =
      $ListDocumentClassifiersResponse->DocumentClassifierPropertiesList;
    my $NextToken = $ListDocumentClassifiersResponse->NextToken;

    # Returns a L<Paws::Comprehend::ListDocumentClassifiersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/ListDocumentClassifiers>

=head1 ATTRIBUTES


=head2 Filter => Comprehend_DocumentClassifierFilter

Filters the jobs that are returned. You can filter jobs on their name,
status, or the date and time that they were submitted. You can only set
one filter at a time.



=head2 MaxResults => Int

The maximum number of results to return in each page. The default is
100.



=head2 NextToken => Str

Identifies the next page of results to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDocumentClassifiers in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

