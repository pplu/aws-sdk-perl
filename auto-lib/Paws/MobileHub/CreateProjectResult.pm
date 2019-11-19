
package Paws::MobileHub::CreateProjectResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MobileHub::Types qw/MobileHub_ProjectDetails/;
  has Details => (is => 'ro', isa => MobileHub_ProjectDetails);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Details' => 'details'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Details' => {
                              'type' => 'MobileHub_ProjectDetails',
                              'class' => 'Paws::MobileHub::ProjectDetails'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::CreateProjectResult

=head1 ATTRIBUTES


=head2 Details => MobileHub_ProjectDetails

Detailed information about the created AWS Mobile Hub project.


=head2 _request_id => Str


=cut

