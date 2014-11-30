
package Paws::ImportExport::CreateJobOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has AwsShippingAddress => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str');
  has JobType => (is => 'ro', isa => 'Str');
  has Signature => (is => 'ro', isa => 'Str');
  has SignatureFileContents => (is => 'ro', isa => 'Str');
  has WarningMessage => (is => 'ro', isa => 'Str');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImportExport::CreateJobOutput

=head1 ATTRIBUTES

=head2 AwsShippingAddress => Str

  
=head2 JobId => Str

  
=head2 JobType => Str

  
=head2 Signature => Str

  
=head2 SignatureFileContents => Str

  
=head2 WarningMessage => Str

  


=cut

