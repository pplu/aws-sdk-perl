
package Paws::RDS::CreateDBClusterEndpoint;
  use Moose;
  has DBClusterEndpointIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has EndpointType => (is => 'ro', isa => 'Str', required => 1);
  has ExcludedMembers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StaticMembers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBClusterEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBClusterEndpoint');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBClusterEndpointResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBClusterEndpoint - Arguments for method CreateDBClusterEndpoint on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBClusterEndpoint on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateDBClusterEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBClusterEndpoint.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DBClusterEndpoint = $rds->CreateDBClusterEndpoint(
      DBClusterEndpointIdentifier => 'MyString',
      DBClusterIdentifier         => 'MyString',
      EndpointType                => 'MyString',
      ExcludedMembers             => [ 'MyString', ... ],    # OPTIONAL
      StaticMembers               => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $CustomEndpointType   = $DBClusterEndpoint->CustomEndpointType;
    my $DBClusterEndpointArn = $DBClusterEndpoint->DBClusterEndpointArn;
    my $DBClusterEndpointIdentifier =
      $DBClusterEndpoint->DBClusterEndpointIdentifier;
    my $DBClusterEndpointResourceIdentifier =
      $DBClusterEndpoint->DBClusterEndpointResourceIdentifier;
    my $DBClusterIdentifier = $DBClusterEndpoint->DBClusterIdentifier;
    my $Endpoint            = $DBClusterEndpoint->Endpoint;
    my $EndpointType        = $DBClusterEndpoint->EndpointType;
    my $ExcludedMembers     = $DBClusterEndpoint->ExcludedMembers;
    my $StaticMembers       = $DBClusterEndpoint->StaticMembers;
    my $Status              = $DBClusterEndpoint->Status;

    # Returns a L<Paws::RDS::DBClusterEndpoint> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBClusterEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterEndpointIdentifier => Str

The identifier to use for the new endpoint. This parameter is stored as
a lowercase string.



=head2 B<REQUIRED> DBClusterIdentifier => Str

The DB cluster identifier of the DB cluster associated with the
endpoint. This parameter is stored as a lowercase string.



=head2 B<REQUIRED> EndpointType => Str

The type of the endpoint. One of: C<READER>, C<ANY>.



=head2 ExcludedMembers => ArrayRef[Str|Undef]

List of DB instance identifiers that aren't part of the custom endpoint
group. All other eligible instances are reachable through the custom
endpoint. Only relevant if the list of static members is empty.



=head2 StaticMembers => ArrayRef[Str|Undef]

List of DB instance identifiers that are part of the custom endpoint
group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBClusterEndpoint in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

