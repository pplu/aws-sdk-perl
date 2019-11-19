
package Paws::XRay::GetServiceGraphResult;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::XRay::Types qw/XRay_Service/;
  has ContainsOldGroupVersions => (is => 'ro', isa => Bool);
  has EndTime => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has Services => (is => 'ro', isa => ArrayRef[XRay_Service]);
  has StartTime => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ContainsOldGroupVersions' => {
                                               'type' => 'Bool'
                                             },
               'Services' => {
                               'type' => 'ArrayRef[XRay_Service]',
                               'class' => 'Paws::XRay::Service'
                             },
               'StartTime' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EndTime' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetServiceGraphResult

=head1 ATTRIBUTES


=head2 ContainsOldGroupVersions => Bool

A flag indicating whether the group's filter expression has been
consistent, or if the returned service graph may show traces from an
older version of the group's filter expression.


=head2 EndTime => Str

The end of the time frame for which the graph was generated.


=head2 NextToken => Str

Pagination token. Not used.


=head2 Services => ArrayRef[XRay_Service]

The services that have processed a traced request during the specified
time frame.


=head2 StartTime => Str

The start of the time frame for which the graph was generated.


=head2 _request_id => Str


=cut

