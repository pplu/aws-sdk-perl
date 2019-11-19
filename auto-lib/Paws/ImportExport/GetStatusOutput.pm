# Generated from callresult_class.tt

package Paws::ImportExport::GetStatusOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::ImportExport::Types qw/ImportExport_Artifact/;
  has ArtifactList => (is => 'ro', isa => ArrayRef[ImportExport_Artifact]);
  has Carrier => (is => 'ro', isa => Str);
  has CreationDate => (is => 'ro', isa => Str);
  has CurrentManifest => (is => 'ro', isa => Str);
  has ErrorCount => (is => 'ro', isa => Int);
  has JobId => (is => 'ro', isa => Str);
  has JobType => (is => 'ro', isa => Str);
  has LocationCode => (is => 'ro', isa => Str);
  has LocationMessage => (is => 'ro', isa => Str);
  has LogBucket => (is => 'ro', isa => Str);
  has LogKey => (is => 'ro', isa => Str);
  has ProgressCode => (is => 'ro', isa => Str);
  has ProgressMessage => (is => 'ro', isa => Str);
  has Signature => (is => 'ro', isa => Str);
  has SignatureFileContents => (is => 'ro', isa => Str);
  has TrackingNumber => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobId' => {
                            'type' => 'Str'
                          },
               'LogKey' => {
                             'type' => 'Str'
                           },
               'JobType' => {
                              'type' => 'Str'
                            },
               'ProgressMessage' => {
                                      'type' => 'Str'
                                    },
               'LogBucket' => {
                                'type' => 'Str'
                              },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'ArtifactList' => {
                                   'type' => 'ArrayRef[ImportExport_Artifact]',
                                   'class' => 'Paws::ImportExport::Artifact'
                                 },
               'LocationMessage' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TrackingNumber' => {
                                     'type' => 'Str'
                                   },
               'Carrier' => {
                              'type' => 'Str'
                            },
               'ErrorCount' => {
                                 'type' => 'Int'
                               },
               'LocationCode' => {
                                   'type' => 'Str'
                                 },
               'CurrentManifest' => {
                                      'type' => 'Str'
                                    },
               'Signature' => {
                                'type' => 'Str'
                              },
               'SignatureFileContents' => {
                                            'type' => 'Str'
                                          },
               'ProgressCode' => {
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

Paws::ImportExport::GetStatusOutput

=head1 ATTRIBUTES


=head2 ArtifactList => ArrayRef[ImportExport_Artifact]




=head2 Carrier => Str




=head2 CreationDate => Str




=head2 CurrentManifest => Str




=head2 ErrorCount => Int




=head2 JobId => Str




=head2 JobType => Str



Valid values are: C<"Import">, C<"Export">
=head2 LocationCode => Str




=head2 LocationMessage => Str




=head2 LogBucket => Str




=head2 LogKey => Str




=head2 ProgressCode => Str




=head2 ProgressMessage => Str




=head2 Signature => Str




=head2 SignatureFileContents => Str




=head2 TrackingNumber => Str




=head2 _request_id => Str


=cut

