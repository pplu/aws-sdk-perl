
package Paws::EFS::DescribeTags;
  use Moose;
  has FileSystemId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FileSystemId', required => 1);
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Marker');
  has MaxItems => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxItems');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTags');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/tags/{FileSystemId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EFS::DescribeTagsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DescribeTags - Arguments for method DescribeTags on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTags on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method DescribeTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTags.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    # To describe the tags for a file system
    # This operation describes all of a file system's tags.
    my $DescribeTagsResponse = $elasticfilesystem->DescribeTags(
      {
        'FileSystemId' => 'fs-01234567'
      }
    );

    # Results:
    my $Tags = $DescribeTagsResponse->Tags;

    # Returns a L<Paws::EFS::DescribeTagsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/DescribeTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileSystemId => Str

ID of the file system whose tag set you want to retrieve.



=head2 Marker => Str

(Optional) Opaque pagination token returned from a previous
C<DescribeTags> operation (String). If present, it specifies to
continue the list from where the previous call left off.



=head2 MaxItems => Int

(Optional) Maximum number of file system tags to return in the
response. It must be an integer with a value greater than zero.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTags in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

