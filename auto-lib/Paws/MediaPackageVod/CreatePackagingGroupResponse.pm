
package Paws::MediaPackageVod::CreatePackagingGroupResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::CreatePackagingGroupResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the PackagingGroup.


=head2 DomainName => Str

The fully qualified domain name for Assets in the PackagingGroup.


=head2 Id => Str

The ID of the PackagingGroup.


=head2 _request_id => Str


=cut

