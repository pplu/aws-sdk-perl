
package Paws::DS::DescribeDirectories;
  use Moose;
  has DirectoryIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDirectories');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::DescribeDirectoriesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeDirectories - Arguments for method DescribeDirectories on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDirectories on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method DescribeDirectories.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDirectories.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $DescribeDirectoriesResult = $ds->DescribeDirectories(
      DirectoryIds => [ 'MyDirectoryId', ... ],    # OPTIONAL
      Limit        => 1,                           # OPTIONAL
      NextToken    => 'MyNextToken',               # OPTIONAL
    );

    # Results:
    my $DirectoryDescriptions =
      $DescribeDirectoriesResult->DirectoryDescriptions;
    my $NextToken = $DescribeDirectoriesResult->NextToken;

    # Returns a L<Paws::DS::DescribeDirectoriesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/DescribeDirectories>

=head1 ATTRIBUTES


=head2 DirectoryIds => ArrayRef[Str|Undef]

A list of identifiers of the directories for which to obtain the
information. If this member is null, all directories that belong to the
current account are returned.

An empty list results in an C<InvalidParameterException> being thrown.



=head2 Limit => Int

The maximum number of items to return. If this value is zero, the
maximum number of items is specified by the limitations of the
operation.



=head2 NextToken => Str

The C<DescribeDirectoriesResult.NextToken> value from a previous call
to DescribeDirectories. Pass null if this is the first call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDirectories in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

