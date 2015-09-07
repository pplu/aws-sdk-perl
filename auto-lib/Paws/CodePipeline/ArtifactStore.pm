package Paws::CodePipeline::ArtifactStore {
  use Moose;
  has encryptionKey => (is => 'ro', isa => 'Paws::CodePipeline::EncryptionKey');
  has location => (is => 'ro', isa => 'Str', required => 1);
  has type => (is => 'ro', isa => 'Str', required => 1);
}
1;
