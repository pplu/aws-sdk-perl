
package Paws::RedShift::DescribeEndpointAccess;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has EndpointName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ResourceOwner => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEndpointAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::EndpointAccessList');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEndpointAccessResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeEndpointAccess - Arguments for method DescribeEndpointAccess on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEndpointAccess on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeEndpointAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEndpointAccess.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $EndpointAccessList = $redshift->DescribeEndpointAccess(
      ClusterIdentifier => 'MyString',    # OPTIONAL
      EndpointName      => 'MyString',    # OPTIONAL
      Marker            => 'MyString',    # OPTIONAL
      MaxRecords        => 1,             # OPTIONAL
      ResourceOwner     => 'MyString',    # OPTIONAL
      VpcId             => 'MyString',    # OPTIONAL
    );

    # Results:
    my $EndpointAccessList = $EndpointAccessList->EndpointAccessList;
    my $Marker             = $EndpointAccessList->Marker;

    # Returns a L<Paws::RedShift::EndpointAccessList> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeEndpointAccess>

=head1 ATTRIBUTES


=head2 ClusterIdentifier => Str

The cluster identifier associated with the described endpoint.



=head2 EndpointName => Str

The name of the endpoint to be described.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeEndpointAccess> request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by the C<MaxRecords> parameter.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a C<Marker> is included in the response so that the
remaining results can be retrieved.



=head2 ResourceOwner => Str

The AWS account ID of the owner of the cluster.



=head2 VpcId => Str

The virtual private cloud (VPC) identifier with access to the cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEndpointAccess in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

