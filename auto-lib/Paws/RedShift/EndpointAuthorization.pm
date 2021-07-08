
package Paws::RedShift::EndpointAuthorization;
  use Moose;
  has AllowedAllVPCs => (is => 'ro', isa => 'Bool');
  has AllowedVPCs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'VpcIdentifier', traits => ['NameInRequest',]);
  has AuthorizeTime => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has ClusterStatus => (is => 'ro', isa => 'Str');
  has EndpointCount => (is => 'ro', isa => 'Int');
  has Grantee => (is => 'ro', isa => 'Str');
  has Grantor => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::EndpointAuthorization

=head1 ATTRIBUTES


=head2 AllowedAllVPCs => Bool

Indicates whether all VPCs in the grantee account are allowed access to
the cluster.


=head2 AllowedVPCs => ArrayRef[Str|Undef]

The VPCs allowed access to the cluster.


=head2 AuthorizeTime => Str

The time (UTC) when the authorization was created.


=head2 ClusterIdentifier => Str

The cluster identifier.


=head2 ClusterStatus => Str

The status of the cluster.


=head2 EndpointCount => Int

The number of Redshift-managed VPC endpoints created for the
authorization.


=head2 Grantee => Str

The AWS account ID of the grantee of the cluster.


=head2 Grantor => Str

The AWS account ID of the cluster owner.


=head2 Status => Str

The status of the authorization action.

Valid values are: C<"Authorized">, C<"Revoking">
=head2 _request_id => Str


=cut

