# Generated from callargs_class.tt

package Paws::RDS::RemoveRoleFromDBCluster;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw//;
  has DBClusterIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FeatureName => (is => 'ro', isa => Str, predicate => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RemoveRoleFromDBCluster');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FeatureName' => {
                                  'type' => 'Str'
                                },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'DBClusterIdentifier' => {
                                          'type' => 'Str'
                                        }
             },
  'IsRequired' => {
                    'DBClusterIdentifier' => 1,
                    'RoleArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RemoveRoleFromDBCluster - Arguments for method RemoveRoleFromDBCluster on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveRoleFromDBCluster on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method RemoveRoleFromDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveRoleFromDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    $rds->RemoveRoleFromDBCluster(
      DBClusterIdentifier => 'MyString',
      RoleArn             => 'MyString',
      FeatureName         => 'MyString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RemoveRoleFromDBCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the DB cluster to disassociate the IAM role from.



=head2 FeatureName => Str

The name of the feature for the DB cluster that the IAM role is to be
disassociated from. For the list of supported feature names, see
DBEngineVersion.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role to disassociate from the
Aurora DB cluster, for example
C<arn:aws:iam::123456789012:role/AuroraAccessRole>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveRoleFromDBCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

