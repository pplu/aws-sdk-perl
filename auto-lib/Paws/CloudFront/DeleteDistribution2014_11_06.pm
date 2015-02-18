
package Paws::CloudFront::DeleteDistribution2014_11_06 {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDistribution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2014-11-06/distribution/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::

=head1 ATTRIBUTES

=head2 B<REQUIRED> Id => Str

  

The distribution id.









=head2 IfMatch => Str

  

The value of the ETag header you received when you disabled the
distribution. For example: E2QWRUHAPOMQZL.











=cut

