
package Paws::Neptune::DeleteDBClusterEndpoint;
  use Moose;
  has DBClusterEndpointIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBClusterEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::DeleteDBClusterEndpointOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBClusterEndpointResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DeleteDBClusterEndpoint - Arguments for method DeleteDBClusterEndpoint on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDBClusterEndpoint on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method DeleteDBClusterEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDBClusterEndpoint.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $DeleteDBClusterEndpointOutput = $rds->DeleteDBClusterEndpoint(
      DBClusterEndpointIdentifier => 'MyString',

    );

    # Results:
    my $CustomEndpointType = $DeleteDBClusterEndpointOutput->CustomEndpointType;
    my $DBClusterEndpointArn =
      $DeleteDBClusterEndpointOutput->DBClusterEndpointArn;
    my $DBClusterEndpointIdentifier =
      $DeleteDBClusterEndpointOutput->DBClusterEndpointIdentifier;
    my $DBClusterEndpointResourceIdentifier =
      $DeleteDBClusterEndpointOutput->DBClusterEndpointResourceIdentifier;
    my $DBClusterIdentifier =
      $DeleteDBClusterEndpointOutput->DBClusterIdentifier;
    my $Endpoint        = $DeleteDBClusterEndpointOutput->Endpoint;
    my $EndpointType    = $DeleteDBClusterEndpointOutput->EndpointType;
    my $ExcludedMembers = $DeleteDBClusterEndpointOutput->ExcludedMembers;
    my $StaticMembers   = $DeleteDBClusterEndpointOutput->StaticMembers;
    my $Status          = $DeleteDBClusterEndpointOutput->Status;

    # Returns a L<Paws::Neptune::DeleteDBClusterEndpointOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteDBClusterEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterEndpointIdentifier => Str

The identifier associated with the custom endpoint. This parameter is
stored as a lowercase string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDBClusterEndpoint in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

