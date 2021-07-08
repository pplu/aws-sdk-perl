
package Paws::IoT::DescribeAuditSuppressionResponse;
  use Moose;
  has CheckName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checkName');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ExpirationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expirationDate');
  has ResourceIdentifier => (is => 'ro', isa => 'Paws::IoT::ResourceIdentifier', traits => ['NameInRequest'], request_name => 'resourceIdentifier');
  has SuppressIndefinitely => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'suppressIndefinitely');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeAuditSuppressionResponse

=head1 ATTRIBUTES


=head2 CheckName => Str




=head2 Description => Str

The description of the audit suppression.


=head2 ExpirationDate => Str

The epoch timestamp in seconds at which this suppression expires.


=head2 ResourceIdentifier => L<Paws::IoT::ResourceIdentifier>




=head2 SuppressIndefinitely => Bool

Indicates whether a suppression should exist indefinitely or not.


=head2 _request_id => Str


=cut

