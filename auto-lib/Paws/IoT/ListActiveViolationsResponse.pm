
package Paws::IoT::ListActiveViolationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_ActiveViolation/;
  has ActiveViolations => (is => 'ro', isa => ArrayRef[IoT_ActiveViolation]);
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
               'ActiveViolations' => {
                                       'class' => 'Paws::IoT::ActiveViolation',
                                       'type' => 'ArrayRef[IoT_ActiveViolation]'
                                     }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ActiveViolations' => 'activeViolations'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListActiveViolationsResponse

=head1 ATTRIBUTES


=head2 ActiveViolations => ArrayRef[IoT_ActiveViolation]

The list of active violations.


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 _request_id => Str


=cut

