
package Paws::IoT1ClickProjects::ListProjectsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT1ClickProjects::Types qw/IoT1ClickProjects_ProjectSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Projects => (is => 'ro', isa => ArrayRef[IoT1ClickProjects_ProjectSummary], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Projects' => {
                               'class' => 'Paws::IoT1ClickProjects::ProjectSummary',
                               'type' => 'ArrayRef[IoT1ClickProjects_ProjectSummary]'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'Projects' => 1
                  },
  'NameInRequest' => {
                       'Projects' => 'projects',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::ListProjectsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to retrieve the next set of results - will be
effectively empty if there are no further results.


=head2 B<REQUIRED> Projects => ArrayRef[IoT1ClickProjects_ProjectSummary]

An object containing the list of projects.


=head2 _request_id => Str


=cut

