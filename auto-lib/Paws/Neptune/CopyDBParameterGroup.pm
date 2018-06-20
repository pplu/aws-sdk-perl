
package Paws::Neptune::CopyDBParameterGroup;
  use Moose;
  has SourceDBParameterGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::Tag]');
  has TargetDBParameterGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has TargetDBParameterGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyDBParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::CopyDBParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopyDBParameterGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::CopyDBParameterGroup - Arguments for method CopyDBParameterGroup on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyDBParameterGroup on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method CopyDBParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyDBParameterGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $CopyDBParameterGroupResult = $rds->CopyDBParameterGroup(
      SourceDBParameterGroupIdentifier  => 'MyString',
      TargetDBParameterGroupDescription => 'MyString',
      TargetDBParameterGroupIdentifier  => 'MyString',
      Tags                              => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DBParameterGroup = $CopyDBParameterGroupResult->DBParameterGroup;

    # Returns a L<Paws::Neptune::CopyDBParameterGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CopyDBParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceDBParameterGroupIdentifier => Str

The identifier or ARN for the source DB parameter group. For
information about creating an ARN, see Constructing an Amazon Resource
Name (ARN)
(http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing).

Constraints:

=over

=item *

Must specify a valid DB parameter group.

=item *

Must specify a valid DB parameter group identifier, for example
C<my-db-param-group>, or a valid ARN.

=back




=head2 Tags => ArrayRef[L<Paws::Neptune::Tag>]





=head2 B<REQUIRED> TargetDBParameterGroupDescription => Str

A description for the copied DB parameter group.



=head2 B<REQUIRED> TargetDBParameterGroupIdentifier => Str

The identifier for the copied DB parameter group.

Constraints:

=over

=item *

Cannot be null, empty, or blank

=item *

Must contain from 1 to 255 letters, numbers, or hyphens

=item *

First character must be a letter

=item *

Cannot end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-db-parameter-group>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyDBParameterGroup in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

