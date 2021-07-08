
package Paws::LexModelsV2::CreateUploadUrlResponse;
  use Moose;
  has ImportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importId');
  has UploadUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uploadUrl');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateUploadUrlResponse

=head1 ATTRIBUTES


=head2 ImportId => Str

An identifier for a unique import job. Use it when you call the
operation.


=head2 UploadUrl => Str

A pre-signed S3 write URL. Upload the zip archive file that contains
the definition of your bot or bot locale.


=head2 _request_id => Str


=cut

