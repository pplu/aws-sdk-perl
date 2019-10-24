# Generated from json/callresult_class.tt

package Paws::Inspector::DescribeAssessmentTemplatesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Inspector::Types qw/Inspector_FailedItems Inspector_AssessmentTemplate/;
  has AssessmentTemplates => (is => 'ro', isa => ArrayRef[Inspector_AssessmentTemplate], required => 1);
  has FailedItems => (is => 'ro', isa => Inspector_FailedItems, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedItems' => {
                                  'class' => 'Paws::Inspector::FailedItems',
                                  'type' => 'Inspector_FailedItems'
                                },
               'AssessmentTemplates' => {
                                          'class' => 'Paws::Inspector::AssessmentTemplate',
                                          'type' => 'ArrayRef[Inspector_AssessmentTemplate]'
                                        }
             },
  'NameInRequest' => {
                       'FailedItems' => 'failedItems',
                       'AssessmentTemplates' => 'assessmentTemplates'
                     },
  'IsRequired' => {
                    'FailedItems' => 1,
                    'AssessmentTemplates' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeAssessmentTemplatesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTemplates => ArrayRef[Inspector_AssessmentTemplate]

Information about the assessment templates.


=head2 B<REQUIRED> FailedItems => Inspector_FailedItems

Assessment template details that cannot be described. An error code is
provided for each failed item.


=head2 _request_id => Str


=cut

1;