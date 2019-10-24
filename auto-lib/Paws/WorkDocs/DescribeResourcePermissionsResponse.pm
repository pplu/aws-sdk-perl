
package Paws::WorkDocs::DescribeResourcePermissionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkDocs::Types qw/WorkDocs_Principal/;
  has Marker => (is => 'ro', isa => Str);
  has Principals => (is => 'ro', isa => ArrayRef[WorkDocs_Principal]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Principals' => {
                                 'class' => 'Paws::WorkDocs::Principal',
                                 'type' => 'ArrayRef[WorkDocs_Principal]'
                               },
               'Marker' => {
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

Paws::WorkDocs::DescribeResourcePermissionsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 Principals => ArrayRef[WorkDocs_Principal]

The principals.


=head2 _request_id => Str


=cut

