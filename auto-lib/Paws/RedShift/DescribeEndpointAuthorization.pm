
package Paws::RedShift::DescribeEndpointAuthorization;
  use Moose;
  has Account => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has Grantee => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEndpointAuthorization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::EndpointAuthorizationList');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEndpointAuthorizationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeEndpointAuthorization - Arguments for method DescribeEndpointAuthorization on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEndpointAuthorization on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeEndpointAuthorization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEndpointAuthorization.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $EndpointAuthorizationList = $redshift->DescribeEndpointAuthorization(
      Account           => 'MyString',    # OPTIONAL
      ClusterIdentifier => 'MyString',    # OPTIONAL
      Grantee           => 1,             # OPTIONAL
      Marker            => 'MyString',    # OPTIONAL
      MaxRecords        => 1,             # OPTIONAL
    );

    # Results:
    my $EndpointAuthorizationList =
      $EndpointAuthorizationList->EndpointAuthorizationList;
    my $Marker = $EndpointAuthorizationList->Marker;

    # Returns a L<Paws::RedShift::EndpointAuthorizationList> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeEndpointAuthorization>

=head1 ATTRIBUTES


=head2 Account => Str

The AWS account ID of either the cluster owner (grantor) or grantee. If
C<Grantee> parameter is true, then the C<Account> value is of the
grantor.



=head2 ClusterIdentifier => Str

The cluster identifier of the cluster to access.



=head2 Grantee => Bool

Indicates whether to check authorization from a grantor or grantee
point of view. If true, Amazon Redshift returns endpoint authorizations
that you've been granted. If false (default), checks authorization from
a grantor point of view.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeEndpointAuthorization> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by the C<MaxRecords> parameter.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a C<Marker> is included in the response so that the
remaining results can be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEndpointAuthorization in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

