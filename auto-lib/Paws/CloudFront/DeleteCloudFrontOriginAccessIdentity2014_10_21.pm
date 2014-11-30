
package Paws::CloudFront::DeleteCloudFrontOriginAccessIdentity2014_10_21 {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCloudFrontOriginAccessIdentity');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::

=head1 ATTRIBUTES

=head2 B<REQUIRED> Id => Str

  

The origin access identity's id.









=head2 IfMatch => Str

  

The value of the ETag header you received from a previous GET or PUT
request. For example: E2QWRUHAPOMQZL.











=cut

