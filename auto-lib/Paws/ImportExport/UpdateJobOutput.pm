# Generated from callresult_class.tt

package Paws::ImportExport::UpdateJobOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::ImportExport::Types qw/ImportExport_Artifact/;
  has ArtifactList => (is => 'ro', isa => ArrayRef[ImportExport_Artifact]);
  has Success => (is => 'ro', isa => Bool);
  has WarningMessage => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ArtifactList' => {
                                   'class' => 'Paws::ImportExport::Artifact',
                                   'type' => 'ArrayRef[ImportExport_Artifact]'
                                 },
               'WarningMessage' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Success' => {
                              'type' => 'Bool'
                            }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImportExport::UpdateJobOutput

=head1 ATTRIBUTES


=head2 ArtifactList => ArrayRef[ImportExport_Artifact]




=head2 Success => Bool




=head2 WarningMessage => Str




=head2 _request_id => Str


=cut

