# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListUniqueProblemsResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_UniqueProblemsByExecutionResultMap/;
  has NextToken => (is => 'ro', isa => Str);
  has UniqueProblems => (is => 'ro', isa => DeviceFarm_UniqueProblemsByExecutionResultMap);

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
               'UniqueProblems' => {
                                     'class' => 'Paws::DeviceFarm::UniqueProblemsByExecutionResultMap',
                                     'type' => 'DeviceFarm_UniqueProblemsByExecutionResultMap'
                                   }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'UniqueProblems' => 'uniqueProblems'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListUniqueProblemsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.


=head2 UniqueProblems => DeviceFarm_UniqueProblemsByExecutionResultMap

Information about the unique problems.

Allowed values include:

=over

=item *

PENDING: A pending condition.

=item *

PASSED: A passing condition.

=item *

WARNED: A warning condition.

=item *

FAILED: A failed condition.

=item *

SKIPPED: A skipped condition.

=item *

ERRORED: An error condition.

=item *

STOPPED: A stopped condition.

=back



=head2 _request_id => Str


=cut

1;