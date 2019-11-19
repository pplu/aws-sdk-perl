# Generated from callresult_class.tt

package Paws::ImportExport::CreateJobOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ImportExport::Types qw/ImportExport_Artifact/;
  has ArtifactList => (is => 'ro', isa => ArrayRef[ImportExport_Artifact]);
  has JobId => (is => 'ro', isa => Str);
  has JobType => (is => 'ro', isa => Str);
  has Signature => (is => 'ro', isa => Str);
  has SignatureFileContents => (is => 'ro', isa => Str);
  has WarningMessage => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SignatureFileContents' => {
                                            'type' => 'Str'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'JobType' => {
                              'type' => 'Str'
                            },
               'WarningMessage' => {
                                     'type' => 'Str'
                                   },
               'Signature' => {
                                'type' => 'Str'
                              },
               'ArtifactList' => {
                                   'type' => 'ArrayRef[ImportExport_Artifact]',
                                   'class' => 'Paws::ImportExport::Artifact'
                                 },
               'JobId' => {
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

Paws::ImportExport::CreateJobOutput

=head1 ATTRIBUTES


=head2 ArtifactList => ArrayRef[ImportExport_Artifact]




=head2 JobId => Str




=head2 JobType => Str



Valid values are: C<"Import">, C<"Export">
=head2 Signature => Str




=head2 SignatureFileContents => Str




=head2 WarningMessage => Str




=head2 _request_id => Str


=cut

