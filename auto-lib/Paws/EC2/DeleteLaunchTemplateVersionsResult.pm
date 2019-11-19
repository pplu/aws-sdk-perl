
package Paws::EC2::DeleteLaunchTemplateVersionsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_DeleteLaunchTemplateVersionsResponseSuccessItem EC2_DeleteLaunchTemplateVersionsResponseErrorItem/;
  has SuccessfullyDeletedLaunchTemplateVersions => (is => 'ro', isa => ArrayRef[EC2_DeleteLaunchTemplateVersionsResponseSuccessItem]);
  has UnsuccessfullyDeletedLaunchTemplateVersions => (is => 'ro', isa => ArrayRef[EC2_DeleteLaunchTemplateVersionsResponseErrorItem]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UnsuccessfullyDeletedLaunchTemplateVersions' => {
                                                                  'class' => 'Paws::EC2::DeleteLaunchTemplateVersionsResponseErrorItem',
                                                                  'type' => 'ArrayRef[EC2_DeleteLaunchTemplateVersionsResponseErrorItem]'
                                                                },
               'SuccessfullyDeletedLaunchTemplateVersions' => {
                                                                'type' => 'ArrayRef[EC2_DeleteLaunchTemplateVersionsResponseSuccessItem]',
                                                                'class' => 'Paws::EC2::DeleteLaunchTemplateVersionsResponseSuccessItem'
                                                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'UnsuccessfullyDeletedLaunchTemplateVersions' => 'unsuccessfullyDeletedLaunchTemplateVersionSet',
                       'SuccessfullyDeletedLaunchTemplateVersions' => 'successfullyDeletedLaunchTemplateVersionSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteLaunchTemplateVersionsResult

=head1 ATTRIBUTES


=head2 SuccessfullyDeletedLaunchTemplateVersions => ArrayRef[EC2_DeleteLaunchTemplateVersionsResponseSuccessItem]

Information about the launch template versions that were successfully
deleted.


=head2 UnsuccessfullyDeletedLaunchTemplateVersions => ArrayRef[EC2_DeleteLaunchTemplateVersionsResponseErrorItem]

Information about the launch template versions that could not be
deleted.


=head2 _request_id => Str


=cut

