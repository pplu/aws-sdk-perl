
package Paws::AppStream::DescribeDirectoryConfigs;
  use Moose;
  has DirectoryNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDirectoryConfigs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::DescribeDirectoryConfigsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeDirectoryConfigs - Arguments for method DescribeDirectoryConfigs on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDirectoryConfigs on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method DescribeDirectoryConfigs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDirectoryConfigs.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $DescribeDirectoryConfigsResult = $appstream2->DescribeDirectoryConfigs(
      DirectoryNames => [ 'MyDirectoryName', ... ],    # OPTIONAL
      MaxResults     => 1,                             # OPTIONAL
      NextToken      => 'MyString',                    # OPTIONAL
    );

    # Results:
    my $DirectoryConfigs = $DescribeDirectoryConfigsResult->DirectoryConfigs;
    my $NextToken        = $DescribeDirectoryConfigsResult->NextToken;

    # Returns a L<Paws::AppStream::DescribeDirectoryConfigsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/DescribeDirectoryConfigs>

=head1 ATTRIBUTES


=head2 DirectoryNames => ArrayRef[Str|Undef]

The directory names.



=head2 MaxResults => Int

The maximum size of each page of results.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDirectoryConfigs in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

