# Generated from json/callresult_class.tt

package Paws::CodeCommit::GetDifferencesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_Difference/;
  has Differences => (is => 'ro', isa => ArrayRef[CodeCommit_Difference]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Differences' => {
                                  'class' => 'Paws::CodeCommit::Difference',
                                  'type' => 'ArrayRef[CodeCommit_Difference]'
                                }
             },
  'NameInRequest' => {
                       'Differences' => 'differences'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetDifferencesOutput

=head1 ATTRIBUTES


=head2 Differences => ArrayRef[CodeCommit_Difference]

A differences data type object that contains information about the
differences, including whether the difference is added, modified, or
deleted (A, D, M).


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 _request_id => Str


=cut

1;