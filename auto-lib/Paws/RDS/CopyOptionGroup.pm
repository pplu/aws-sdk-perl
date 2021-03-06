
package Paws::RDS::CopyOptionGroup;
  use Moose;
  has SourceOptionGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TargetOptionGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has TargetOptionGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyOptionGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CopyOptionGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopyOptionGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CopyOptionGroup - Arguments for method CopyOptionGroup on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyOptionGroup on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CopyOptionGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyOptionGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To copy an option group
    # This example copies an option group.
    my $CopyOptionGroupResult = $rds->CopyOptionGroup(
      'SourceOptionGroupIdentifier'  => 'mymysqloptiongroup',
      'TargetOptionGroupDescription' => 'My MySQL option group copy',
      'TargetOptionGroupIdentifier'  => 'mymysqloptiongroup-copy'
    );

    # Results:
    my $OptionGroup = $CopyOptionGroupResult->OptionGroup;

    # Returns a L<Paws::RDS::CopyOptionGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CopyOptionGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceOptionGroupIdentifier => Str

The identifier for the source option group.

Constraints:

=over

=item *

Must specify a valid option group.

=back




=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 B<REQUIRED> TargetOptionGroupDescription => Str

The description for the copied option group.



=head2 B<REQUIRED> TargetOptionGroupIdentifier => Str

The identifier for the copied option group.

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

Example: C<my-option-group>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyOptionGroup in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

