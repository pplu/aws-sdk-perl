
package Paws::RDS::CopyDBParameterGroup {
  use Moose;
  has SourceDBParameterGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TargetDBParameterGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has TargetDBParameterGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyDBParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CopyDBParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopyDBParameterGroupResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CopyDBParameterGroup - Arguments for method CopyDBParameterGroup on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyDBParameterGroup on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method CopyDBParameterGroup.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to CopyDBParameterGroup.

As an example:

  $service_obj->CopyDBParameterGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> SourceDBParameterGroupIdentifier => Str

  

The identifier or ARN for the source DB Parameter Group.

Constraints:

=over

=item * Must specify a valid DB Parameter Group.

=item * If the source DB Parameter Group is in the same region as the
copy, specify a valid DB Parameter Group identifier, or a valid ARN.

=item * If the source DB Parameter Group is in a different region than
the copy, specify a valid DB parameter group ARN.

=back

Example: C<my-db-param-group>

Example: C<arn:aws:rds:us-west-2:123456789012:pg:special-parameters>










=head2 Tags => ArrayRef[Paws::RDS::Tag]

  

=head2 B<REQUIRED> TargetDBParameterGroupDescription => Str

  

The description for the copied DB Parameter Group.










=head2 B<REQUIRED> TargetDBParameterGroupIdentifier => Str

  

The identifier for the copied DB Parameter Group.

Constraints:

=over

=item * Cannot be null, empty, or blank

=item * Must contain from 1 to 255 alphanumeric characters or hyphens

=item * First character must be a letter

=item * Cannot end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-db-parameter-group>












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for CopyDBParameterGroup in Paws::RDS

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

