# Generated from json/callresult_class.tt

package Paws::Support::ResolveCaseResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Support::Types qw//;
  has FinalCaseStatus => (is => 'ro', isa => Str);
  has InitialCaseStatus => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'InitialCaseStatus' => 'initialCaseStatus',
                       'FinalCaseStatus' => 'finalCaseStatus'
                     },
  'types' => {
               'FinalCaseStatus' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InitialCaseStatus' => {
                                        'type' => 'Str'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Support::ResolveCaseResponse

=head1 ATTRIBUTES


=head2 FinalCaseStatus => Str

The status of the case after the ResolveCase request was processed.


=head2 InitialCaseStatus => Str

The status of the case when the ResolveCase request was sent.


=head2 _request_id => Str


=cut

1;