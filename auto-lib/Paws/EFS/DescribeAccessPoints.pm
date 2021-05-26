
package Paws::EFS::DescribeAccessPoints;
  use Moose;
  has AccessPointId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'AccessPointId');
  has FileSystemId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'FileSystemId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccessPoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/access-points');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EFS::DescribeAccessPointsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DescribeAccessPoints - Arguments for method DescribeAccessPoints on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccessPoints on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method DescribeAccessPoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccessPoints.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    my $DescribeAccessPointsResponse = $elasticfilesystem->DescribeAccessPoints(
      AccessPointId => 'MyAccessPointId',    # OPTIONAL
      FileSystemId  => 'MyFileSystemId',     # OPTIONAL
      MaxResults    => 1,                    # OPTIONAL
      NextToken     => 'MyToken',            # OPTIONAL
    );

    # Results:
    my $AccessPoints = $DescribeAccessPointsResponse->AccessPoints;
    my $NextToken    = $DescribeAccessPointsResponse->NextToken;

    # Returns a L<Paws::EFS::DescribeAccessPointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/DescribeAccessPoints>

=head1 ATTRIBUTES


=head2 AccessPointId => Str

(Optional) Specifies an EFS access point to describe in the response;
mutually exclusive with C<FileSystemId>.



=head2 FileSystemId => Str

(Optional) If you provide a C<FileSystemId>, EFS returns all access
points for that file system; mutually exclusive with C<AccessPointId>.



=head2 MaxResults => Int

(Optional) When retrieving all access points for a file system, you can
optionally specify the C<MaxItems> parameter to limit the number of
objects returned in a response. The default value is 100.



=head2 NextToken => Str

C<NextToken> is present if the response is paginated. You can use
C<NextMarker> in the subsequent request to fetch the next page of
access point descriptions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccessPoints in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

