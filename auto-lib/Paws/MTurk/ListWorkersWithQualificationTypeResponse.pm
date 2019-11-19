# Generated from json/callresult_class.tt

package Paws::MTurk::ListWorkersWithQualificationTypeResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::MTurk::Types qw/MTurk_Qualification/;
  has NextToken => (is => 'ro', isa => Str);
  has NumResults => (is => 'ro', isa => Int);
  has Qualifications => (is => 'ro', isa => ArrayRef[MTurk_Qualification]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NumResults' => {
                                 'type' => 'Int'
                               },
               'Qualifications' => {
                                     'type' => 'ArrayRef[MTurk_Qualification]',
                                     'class' => 'Paws::MTurk::Qualification'
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

Paws::MTurk::ListWorkersWithQualificationTypeResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 NumResults => Int

The number of Qualifications on this page in the filtered results list,
equivalent to the number of Qualifications being returned by this call.


=head2 Qualifications => ArrayRef[MTurk_Qualification]

The list of Qualification elements returned by this call.


=head2 _request_id => Str


=cut

1;