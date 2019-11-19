
package Paws::IoT::ListThingRegistrationTaskReportsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::IoT::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has ReportType => (is => 'ro', isa => Str);
  has ResourceLinks => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReportType' => {
                                 'type' => 'Str'
                               },
               'ResourceLinks' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ReportType' => 'reportType',
                       'ResourceLinks' => 'resourceLinks'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingRegistrationTaskReportsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to get the next set of results, or B<null> if there are
no additional results.


=head2 ReportType => Str

The type of task report.

Valid values are: C<"ERRORS">, C<"RESULTS">
=head2 ResourceLinks => ArrayRef[Str|Undef]

Links to the task resources.


=head2 _request_id => Str


=cut

