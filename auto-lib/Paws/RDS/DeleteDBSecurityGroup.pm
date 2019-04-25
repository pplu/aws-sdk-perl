
package Paws::RDS::DeleteDBSecurityGroup;
  use Moose;
  has DBSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBSecurityGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteDBSecurityGroup - Arguments for method DeleteDBSecurityGroup on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDBSecurityGroup on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DeleteDBSecurityGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDBSecurityGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To delete a DB security group
    # The following example deletes a DB security group.
    $rds->DeleteDBSecurityGroup(
      {
        'DBSecurityGroupName' => 'mysecgroup'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteDBSecurityGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBSecurityGroupName => Str

The name of the DB security group to delete.

You can't delete the default DB security group.

Constraints:

=over

=item *

Must be 1 to 255 letters, numbers, or hyphens.

=item *

First character must be a letter

=item *

Can't end with a hyphen or contain two consecutive hyphens

=item *

Must not be "Default"

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDBSecurityGroup in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

