# Generated from json/callargs_class.tt

package Paws::Inspector::ListAssessmentRuns;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int/;
  use Paws::Inspector::Types qw/Inspector_AssessmentRunFilter/;
  has AssessmentTemplateArns => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Filter => (is => 'ro', isa => Inspector_AssessmentRunFilter, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListAssessmentRuns');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Inspector::ListAssessmentRunsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Filter' => {
                             'class' => 'Paws::Inspector::AssessmentRunFilter',
                             'type' => 'Inspector_AssessmentRunFilter'
                           },
               'AssessmentTemplateArns' => {
                                             'type' => 'ArrayRef[Str|Undef]'
                                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'Filter' => 'filter',
                       'AssessmentTemplateArns' => 'assessmentTemplateArns',
                       'NextToken' => 'nextToken',
                       'MaxResults' => 'maxResults'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListAssessmentRuns - Arguments for method ListAssessmentRuns on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssessmentRuns on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method ListAssessmentRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssessmentRuns.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    # List assessment runs
    # Lists the assessment runs that correspond to the assessment templates that
    # are specified by the ARNs of the assessment templates.
    my $ListAssessmentRunsResponse = $inspector->ListAssessmentRuns(
      'AssessmentTemplateArns' => [
'arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw'
      ],
      'MaxResults' => 123
    );

    # Results:
    my $assessmentRunArns = $ListAssessmentRunsResponse->assessmentRunArns;
    my $nextToken         = $ListAssessmentRunsResponse->nextToken;

    # Returns a L<Paws::Inspector::ListAssessmentRunsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/ListAssessmentRuns>

=head1 ATTRIBUTES


=head2 AssessmentTemplateArns => ArrayRef[Str|Undef]

The ARNs that specify the assessment templates whose assessment runs
you want to list.



=head2 Filter => Inspector_AssessmentRunFilter

You can use this parameter to specify a subset of data to be included
in the action's response.

For a record to match a filter, all specified filter attributes must
match. When multiple values are specified for a filter attribute, any
of the values can match.



=head2 MaxResults => Int

You can use this parameter to indicate the maximum number of items that
you want in the response. The default value is 10. The maximum value is
500.



=head2 NextToken => Str

You can use this parameter when paginating results. Set the value of
this parameter to null on your first call to the B<ListAssessmentRuns>
action. Subsequent calls to the action fill B<nextToken> in the request
with the value of B<NextToken> from the previous response to continue
listing data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssessmentRuns in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

