
package Paws::ApiGateway::VpcLink;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage');
  has Tags => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'tags');
  has TargetArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'targetArns');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::VpcLink

=head1 ATTRIBUTES


=head2 Description => Str

The description of the VPC link.


=head2 Id => Str

The identifier of the VpcLink. It is used in an Integration to
reference this VpcLink.


=head2 Name => Str

The name used to label and identify the VPC link.


=head2 Status => Str

The status of the VPC link. The valid values are C<AVAILABLE>,
C<PENDING>, C<DELETING>, or C<FAILED>. Deploying an API will wait if
the status is C<PENDING> and will fail if the status is C<DELETING>.

Valid values are: C<"AVAILABLE">, C<"PENDING">, C<"DELETING">, C<"FAILED">
=head2 StatusMessage => Str

A description about the VPC link status.


=head2 Tags => L<Paws::ApiGateway::MapOfStringToString>

The collection of tags. Each tag element is associated with a given
resource.


=head2 TargetArns => ArrayRef[Str|Undef]

The ARN of the network load balancer of the VPC targeted by the VPC
link. The network load balancer must be owned by the same AWS account
of the API owner.


=head2 _request_id => Str


=cut

