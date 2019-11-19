# Generated from json/callresult_class.tt

package Paws::MTurk::ListQualificationTypesResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::MTurk::Types qw/MTurk_QualificationType/;
  has NextToken => (is => 'ro', isa => Str);
  has NumResults => (is => 'ro', isa => Int);
  has QualificationTypes => (is => 'ro', isa => ArrayRef[MTurk_QualificationType]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NumResults' => {
                                 'type' => 'Int'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'QualificationTypes' => {
                                         'type' => 'ArrayRef[MTurk_QualificationType]',
                                         'class' => 'Paws::MTurk::QualificationType'
                                       },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListQualificationTypesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 NumResults => Int

The number of Qualification types on this page in the filtered results
list, equivalent to the number of types this operation returns.


=head2 QualificationTypes => ArrayRef[MTurk_QualificationType]

The list of QualificationType elements returned by the query.


=head2 _request_id => Str


=cut

1;