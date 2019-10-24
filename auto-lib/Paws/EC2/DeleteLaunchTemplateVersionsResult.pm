
package Paws::EC2::DeleteLaunchTemplateVersionsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_DeleteLaunchTemplateVersionsResponseErrorItem EC2_DeleteLaunchTemplateVersionsResponseSuccessItem/;
  has SuccessfullyDeletedLaunchTemplateVersions => (is => 'ro', isa => ArrayRef[EC2_DeleteLaunchTemplateVersionsResponseSuccessItem]);
  has UnsuccessfullyDeletedLaunchTemplateVersions => (is => 'ro', isa => ArrayRef[EC2_DeleteLaunchTemplateVersionsResponseErrorItem]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SuccessfullyDeletedLaunchTemplateVersions' => {
                                                                'class' => 'Paws::EC2::DeleteLaunchTemplateVersionsResponseSuccessItem',
                                                                'type' => 'ArrayRef[EC2_DeleteLaunchTemplateVersionsResponseSuccessItem]'
                                                              },
               'UnsuccessfullyDeletedLaunchTemplateVersions' => {
                                                                  'class' => 'Paws::EC2::DeleteLaunchTemplateVersionsResponseErrorItem',
                                                                  'type' => 'ArrayRef[EC2_DeleteLaunchTemplateVersionsResponseErrorItem]'
                                                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SuccessfullyDeletedLaunchTemplateVersions' => 'successfullyDeletedLaunchTemplateVersionSet',
                       'UnsuccessfullyDeletedLaunchTemplateVersions' => 'unsuccessfullyDeletedLaunchTemplateVersionSet'
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

