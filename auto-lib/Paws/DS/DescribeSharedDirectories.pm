
package Paws::DS::DescribeSharedDirectories;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OwnerDirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has SharedDirectoryIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSharedDirectories');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::DescribeSharedDirectoriesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeSharedDirectories - Arguments for method DescribeSharedDirectories on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSharedDirectories on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method DescribeSharedDirectories.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSharedDirectories.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $DescribeSharedDirectoriesResult = $ds->DescribeSharedDirectories(
      OwnerDirectoryId   => 'MyDirectoryId',
      Limit              => 1,                           # OPTIONAL
      NextToken          => 'MyNextToken',               # OPTIONAL
      SharedDirectoryIds => [ 'MyDirectoryId', ... ],    # OPTIONAL
    );

    # Results:
    my $NextToken         = $DescribeSharedDirectoriesResult->NextToken;
    my $SharedDirectories = $DescribeSharedDirectoriesResult->SharedDirectories;

    # Returns a L<Paws::DS::DescribeSharedDirectoriesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/DescribeSharedDirectories>

=head1 ATTRIBUTES


=head2 Limit => Int

The number of shared directories to return in the response object.



=head2 NextToken => Str

The C<DescribeSharedDirectoriesResult.NextToken> value from a previous
call to DescribeSharedDirectories. Pass null if this is the first call.



=head2 B<REQUIRED> OwnerDirectoryId => Str

Returns the identifier of the directory in the directory owner account.



=head2 SharedDirectoryIds => ArrayRef[Str|Undef]

A list of identifiers of all shared directories in your account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSharedDirectories in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

