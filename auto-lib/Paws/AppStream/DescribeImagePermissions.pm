
package Paws::AppStream::DescribeImagePermissions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has SharedAwsAccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImagePermissions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::DescribeImagePermissionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeImagePermissions - Arguments for method DescribeImagePermissions on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeImagePermissions on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method DescribeImagePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeImagePermissions.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $DescribeImagePermissionsResult = $appstream2->DescribeImagePermissions(
      Name                => 'MyName',
      MaxResults          => 1,                            # OPTIONAL
      NextToken           => 'MyString',                   # OPTIONAL
      SharedAwsAccountIds => [ 'MyAwsAccountId', ... ],    # OPTIONAL
    );

    # Results:
    my $Name      = $DescribeImagePermissionsResult->Name;
    my $NextToken = $DescribeImagePermissionsResult->NextToken;
    my $SharedImagePermissionsList =
      $DescribeImagePermissionsResult->SharedImagePermissionsList;

    # Returns a L<Paws::AppStream::DescribeImagePermissionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/DescribeImagePermissions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum size of each page of results.



=head2 B<REQUIRED> Name => Str

The name of the private image for which to describe permissions. The
image must be one that you own.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.



=head2 SharedAwsAccountIds => ArrayRef[Str|Undef]

The 12-digit identifier of one or more AWS accounts with which the
image is shared.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeImagePermissions in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

