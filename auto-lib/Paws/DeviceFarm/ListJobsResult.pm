# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListJobsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Job/;
  has Jobs => (is => 'ro', isa => ArrayRef[DeviceFarm_Job]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Jobs' => {
                           'class' => 'Paws::DeviceFarm::Job',
                           'type' => 'ArrayRef[DeviceFarm_Job]'
                         },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Jobs' => 'jobs'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListJobsResult

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[DeviceFarm_Job]

Information about the jobs.


=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.


=head2 _request_id => Str


=cut

1;