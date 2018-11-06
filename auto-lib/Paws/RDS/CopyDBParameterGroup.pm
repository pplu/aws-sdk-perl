
package Paws::RDS::CopyDBParameterGroup;
  use Moose;
  has SourceDBParameterGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TargetDBParameterGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has TargetDBParameterGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyDBParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CopyDBParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopyDBParameterGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CopyDBParameterGroup - Arguments for method CopyDBParameterGroup on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyDBParameterGroup on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CopyDBParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyDBParameterGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To copy a DB parameter group
    # This example copies a DB parameter group.
    my $CopyDBParameterGroupResult = $rds->CopyDBParameterGroup(
      {
        'SourceDBParameterGroupIdentifier'  => 'mymysqlparametergroup',
        'TargetDBParameterGroupDescription' => 'My MySQL parameter group copy',
        'TargetDBParameterGroupIdentifier'  => 'mymysqlparametergroup-copy'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CopyDBParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceDBParameterGroupIdentifier => Str

The identifier or ARN for the source DB parameter group. For
information about creating an ARN, see Constructing an ARN for Amazon
RDS
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing)
in the I<Amazon RDS User Guide>.

Constraints:

=over

=item *

Must specify a valid DB parameter group.

=item *

Must specify a valid DB parameter group identifier, for example
C<my-db-param-group>, or a valid ARN.

=back




=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 B<REQUIRED> TargetDBParameterGroupDescription => Str

A description for the copied DB parameter group.



=head2 B<REQUIRED> TargetDBParameterGroupIdentifier => Str

The identifier for the copied DB parameter group.

Constraints:

=over

=item *

Can't be null, empty, or blank

=item *

Must contain from 1 to 255 letters, numbers, or hyphens

=item *

First character must be a letter

=item *

Can't end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-db-parameter-group>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyDBParameterGroup in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

