
package Paws::WorkDocs::AddResourcePermissionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkDocs::Types qw/WorkDocs_ShareResult/;
  has ShareResults => (is => 'ro', isa => ArrayRef[WorkDocs_ShareResult]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ShareResults' => {
                                   'class' => 'Paws::WorkDocs::ShareResult',
                                   'type' => 'ArrayRef[WorkDocs_ShareResult]'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::AddResourcePermissionsResponse

=head1 ATTRIBUTES


=head2 ShareResults => ArrayRef[WorkDocs_ShareResult]

The share results.


=head2 _request_id => Str


=cut

