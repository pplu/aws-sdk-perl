
package Paws::MobileHub::ListProjectsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MobileHub::Types qw/MobileHub_ProjectSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Projects => (is => 'ro', isa => ArrayRef[MobileHub_ProjectSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Projects' => 'projects',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Projects' => {
                               'type' => 'ArrayRef[MobileHub_ProjectSummary]',
                               'class' => 'Paws::MobileHub::ProjectSummary'
                             },
               'NextToken' => {
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

Paws::MobileHub::ListProjectsResult

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 Projects => ArrayRef[MobileHub_ProjectSummary]




=head2 _request_id => Str


=cut

