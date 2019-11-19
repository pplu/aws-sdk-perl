
package Paws::IoT1ClickProjects::DescribeProjectResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT1ClickProjects::Types qw/IoT1ClickProjects_ProjectDescription/;
  has Project => (is => 'ro', isa => IoT1ClickProjects_ProjectDescription, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Project' => {
                              'class' => 'Paws::IoT1ClickProjects::ProjectDescription',
                              'type' => 'IoT1ClickProjects_ProjectDescription'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Project' => 1
                  },
  'NameInRequest' => {
                       'Project' => 'project'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::DescribeProjectResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Project => IoT1ClickProjects_ProjectDescription

An object describing the project.


=head2 _request_id => Str


=cut

