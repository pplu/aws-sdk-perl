
package Paws::ImageBuilder::ListImagePackagesResponse;
  use Moose;
  has ImagePackageList => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::ImagePackage]', traits => ['NameInRequest'], request_name => 'imagePackageList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListImagePackagesResponse

=head1 ATTRIBUTES


=head2 ImagePackageList => ArrayRef[L<Paws::ImageBuilder::ImagePackage>]

The list of Image Packages returned in the response.


=head2 NextToken => Str

A token to specify where to start paginating. This is the NextToken
from a previously truncated response.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

