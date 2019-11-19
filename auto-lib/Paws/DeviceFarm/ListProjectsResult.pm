# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListProjectsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Project/;
  has NextToken => (is => 'ro', isa => Str);
  has Projects => (is => 'ro', isa => ArrayRef[DeviceFarm_Project]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Projects' => 'projects',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Projects' => {
                               'type' => 'ArrayRef[DeviceFarm_Project]',
                               'class' => 'Paws::DeviceFarm::Project'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListProjectsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.


=head2 Projects => ArrayRef[DeviceFarm_Project]

Information about the projects.


=head2 _request_id => Str


=cut

1;