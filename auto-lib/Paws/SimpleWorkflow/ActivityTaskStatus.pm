# Generated from json/callresult_class.tt

package Paws::SimpleWorkflow::ActivityTaskStatus;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::SimpleWorkflow::Types qw//;
  has CancelRequested => (is => 'ro', isa => Bool, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CancelRequested' => {
                                      'type' => 'Bool'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'CancelRequested' => 'cancelRequested'
                     },
  'IsRequired' => {
                    'CancelRequested' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ActivityTaskStatus

=head1 ATTRIBUTES


=head2 B<REQUIRED> CancelRequested => Bool

Set to C<true> if cancellation of the task is requested.


=head2 _request_id => Str


=cut

1;