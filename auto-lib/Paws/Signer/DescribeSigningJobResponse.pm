
package Paws::Signer::DescribeSigningJobResponse;
  use Moose;
  has CompletedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'completedAt');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId');
  has Overrides => (is => 'ro', isa => 'Paws::Signer::SigningPlatformOverrides', traits => ['NameInRequest'], request_name => 'overrides');
  has PlatformId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platformId');
  has ProfileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileName');
  has RequestedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestedBy');
  has SignedObject => (is => 'ro', isa => 'Paws::Signer::SignedObject', traits => ['NameInRequest'], request_name => 'signedObject');
  has SigningMaterial => (is => 'ro', isa => 'Paws::Signer::SigningMaterial', traits => ['NameInRequest'], request_name => 'signingMaterial');
  has SigningParameters => (is => 'ro', isa => 'Paws::Signer::SigningParameters', traits => ['NameInRequest'], request_name => 'signingParameters');
  has Source => (is => 'ro', isa => 'Paws::Signer::Source', traits => ['NameInRequest'], request_name => 'source');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');

  has _request_id => (is => 'ro', isa => 'Str');
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


=head2 Overrides => L<Paws::Signer::SigningPlatformOverrides>

A list of any overrides that were applied to the signing operation.


=head2 PlatformId => Str

The microcontroller platform to which your signed code image will be
distributed.


=head2 ProfileName => Str

The name of the profile that initiated the signing operation.


=head2 RequestedBy => Str

The IAM principal that requested the signing job.


=head2 SignedObject => L<Paws::Signer::SignedObject>

Name of the S3 bucket where the signed code image is saved by AWS
Signer.


=head2 SigningMaterial => L<Paws::Signer::SigningMaterial>

Amazon Resource Name (ARN) of your code signing certificate.


=head2 SigningParameters => L<Paws::Signer::SigningParameters>

Map of user-assigned key-value pairs used during signing. These values
contain any information that you specified for use in your signing job.


=head2 Source => L<Paws::Signer::Source>

The object that contains the name of your S3 bucket or your raw code.


=head2 Status => Str

Status of the signing job.

Valid values are: C<"InProgress">, C<"Failed">, C<"Succeeded">
=head2 StatusReason => Str

String value that contains the status reason.


=head2 _request_id => Str


=cut

