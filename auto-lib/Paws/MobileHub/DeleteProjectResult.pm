
package Paws::MobileHub::DeleteProjectResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MobileHub::Types qw/MobileHub_Resource/;
  has DeletedResources => (is => 'ro', isa => ArrayRef[MobileHub_Resource]);
  has OrphanedResources => (is => 'ro', isa => ArrayRef[MobileHub_Resource]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeletedResources' => {
                                       'class' => 'Paws::MobileHub::Resource',
                                       'type' => 'ArrayRef[MobileHub_Resource]'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OrphanedResources' => {
                                        'class' => 'Paws::MobileHub::Resource',
                                        'type' => 'ArrayRef[MobileHub_Resource]'
                                      }
             },
  'NameInRequest' => {
                       'DeletedResources' => 'deletedResources',
                       'OrphanedResources' => 'orphanedResources'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::DeleteProjectResult

=head1 ATTRIBUTES


=head2 DeletedResources => ArrayRef[MobileHub_Resource]

Resources which were deleted.


=head2 OrphanedResources => ArrayRef[MobileHub_Resource]

Resources which were not deleted, due to a risk of losing potentially
important data or files.


=head2 _request_id => Str


=cut

