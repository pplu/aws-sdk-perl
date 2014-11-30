
package Paws::S3::DeleteObject {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has MFA => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteObject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::DeleteObjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteObjectResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteObjectOutput

=head1 ATTRIBUTES

=head2 B<REQUIRED> Bucket => Str

  
=head2 B<REQUIRED> Key => Str

  
=head2 MFA => Str

  

The concatenation of the authentication device's serial number, a
space, and the value that is displayed on your authentication device.









=head2 VersionId => Str

  

VersionId used to reference a specific version of the object.











=cut

