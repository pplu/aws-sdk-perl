
package Paws::Signer::DescribeSigningJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Signer::Types qw/Signer_SigningParameters Signer_SigningPlatformOverrides Signer_SignedObject Signer_SigningMaterial Signer_Source/;
  has CompletedAt => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has JobId => (is => 'ro', isa => Str);
  has Overrides => (is => 'ro', isa => Signer_SigningPlatformOverrides);
  has PlatformId => (is => 'ro', isa => Str);
  has ProfileName => (is => 'ro', isa => Str);
  has RequestedBy => (is => 'ro', isa => Str);
  has SignedObject => (is => 'ro', isa => Signer_SignedObject);
  has SigningMaterial => (is => 'ro', isa => Signer_SigningMaterial);
  has SigningParameters => (is => 'ro', isa => Signer_SigningParameters);
  has Source => (is => 'ro', isa => Signer_Source);
  has Status => (is => 'ro', isa => Str);
  has StatusReason => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Status' => 'status',
                       'PlatformId' => 'platformId',
                       'Overrides' => 'overrides',
                       'SignedObject' => 'signedObject',
                       'JobId' => 'jobId',
                       'CompletedAt' => 'completedAt',
                       'Source' => 'source',
                       'SigningMaterial' => 'signingMaterial',
                       'RequestedBy' => 'requestedBy',
                       'StatusReason' => 'statusReason',
                       'ProfileName' => 'profileName',
                       'SigningParameters' => 'signingParameters',
                       'CreatedAt' => 'createdAt'
                     },
  'types' => {
               'PlatformId' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'CompletedAt' => {
                                  'type' => 'Str'
                                },
               'JobId' => {
                            'type' => 'Str'
                          },
               'SignedObject' => {
                                   'class' => 'Paws::Signer::SignedObject',
                                   'type' => 'Signer_SignedObject'
                                 },
               'Overrides' => {
                                'type' => 'Signer_SigningPlatformOverrides',
                                'class' => 'Paws::Signer::SigningPlatformOverrides'
                              },
               'RequestedBy' => {
                                  'type' => 'Str'
                                },
               'SigningMaterial' => {
                                      'type' => 'Signer_SigningMaterial',
                                      'class' => 'Paws::Signer::SigningMaterial'
                                    },
               'Source' => {
                             'class' => 'Paws::Signer::Source',
                             'type' => 'Signer_Source'
                           },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'SigningParameters' => {
                                        'class' => 'Paws::Signer::SigningParameters',
                                        'type' => 'Signer_SigningParameters'
                                      },
               'ProfileName' => {
                                  'type' => 'Str'
                                },
               'StatusReason' => {
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

Paws::Signer::DescribeSigningJobResponse

=head1 ATTRIBUTES


=head2 CompletedAt => Str

Date and time that the signing job was completed.


=head2 CreatedAt => Str

Date and time that the signing job was created.


=head2 JobId => Str

The ID of the signing job on output.


=head2 Overrides => Signer_SigningPlatformOverrides

A list of any overrides that were applied to the signing operation.


=head2 PlatformId => Str

The microcontroller platform to which your signed code image will be
distributed.


=head2 ProfileName => Str

The name of the profile that initiated the signing operation.


=head2 RequestedBy => Str

The IAM principal that requested the signing job.


=head2 SignedObject => Signer_SignedObject

Name of the S3 bucket where the signed code image is saved by code
signing.


=head2 SigningMaterial => Signer_SigningMaterial

Amazon Resource Name (ARN) of your code signing certificate.


=head2 SigningParameters => Signer_SigningParameters

Map of user-assigned key-value pairs used during signing. These values
contain any information that you specified for use in your signing job.


=head2 Source => Signer_Source

The object that contains the name of your S3 bucket or your raw code.


=head2 Status => Str

Status of the signing job.

Valid values are: C<"InProgress">, C<"Failed">, C<"Succeeded">
=head2 StatusReason => Str

String value that contains the status reason.


=head2 _request_id => Str


=cut

