
package Paws::WorkSpaces::DescribeConnectionAliases;
  use Moose;
  has AliasIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnectionAliases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DescribeConnectionAliasesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeConnectionAliases - Arguments for method DescribeConnectionAliases on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConnectionAliases on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DescribeConnectionAliases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConnectionAliases.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DescribeConnectionAliasesResult =
      $workspaces->DescribeConnectionAliases(
      AliasIds => [
        'MyConnectionAliasId', ...    # min: 13, max: 68
      ],    # OPTIONAL
      Limit      => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      ResourceId => 'MyNonEmptyString',     # OPTIONAL
      );

    # Results:
    my $ConnectionAliases = $DescribeConnectionAliasesResult->ConnectionAliases;
    my $NextToken         = $DescribeConnectionAliasesResult->NextToken;

    # Returns a L<Paws::WorkSpaces::DescribeConnectionAliasesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DescribeConnectionAliases>

=head1 ATTRIBUTES


=head2 AliasIds => ArrayRef[Str|Undef]

The identifiers of the connection aliases to describe.



=head2 Limit => Int

The maximum number of connection aliases to return.



=head2 NextToken => Str

If you received a C<NextToken> from a previous call that was paginated,
provide this token to receive the next set of results.



=head2 ResourceId => Str

The identifier of the directory associated with the connection alias.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConnectionAliases in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

