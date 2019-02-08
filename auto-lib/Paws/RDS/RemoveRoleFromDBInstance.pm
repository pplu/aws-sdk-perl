
package Paws::RDS::RemoveRoleFromDBInstance;
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has FeatureName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveRoleFromDBInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RemoveRoleFromDBInstance - Arguments for method RemoveRoleFromDBInstance on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveRoleFromDBInstance on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method RemoveRoleFromDBInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveRoleFromDBInstance.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    $rds->RemoveRoleFromDBInstance(
      DBInstanceIdentifier => 'MyString',
      FeatureName          => 'MyString',
      RoleArn              => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RemoveRoleFromDBInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBInstanceIdentifier => Str

The name of the DB instance to disassociate the IAM role from.



=head2 B<REQUIRED> FeatureName => Str

The name of the feature for the DB instance that the IAM role is to be
disassociated from. For the list of supported feature names, see
DBEngineVersion.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role to disassociate from the
DB instance, for example C<arn:aws:iam::123456789012:role/AccessRole>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveRoleFromDBInstance in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

