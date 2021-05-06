
package Paws::RedShift::CreateClusterSecurityGroup;
  use Moose;
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterSecurityGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::CreateClusterSecurityGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterSecurityGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateClusterSecurityGroup - Arguments for method CreateClusterSecurityGroup on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateClusterSecurityGroup on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method CreateClusterSecurityGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateClusterSecurityGroup.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $CreateClusterSecurityGroupResult =
      $redshift->CreateClusterSecurityGroup(
      ClusterSecurityGroupName => 'MyString',
      Description              => 'MyString',
      Tags                     => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $ClusterSecurityGroup =
      $CreateClusterSecurityGroupResult->ClusterSecurityGroup;

    # Returns a L<Paws::RedShift::CreateClusterSecurityGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/CreateClusterSecurityGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterSecurityGroupName => Str

The name for the security group. Amazon Redshift stores the value as a
lowercase string.

Constraints:

=over

=item *

Must contain no more than 255 alphanumeric characters or hyphens.

=item *

Must not be "Default".

=item *

Must be unique for all security groups that are created by your AWS
account.

=back

Example: C<examplesecuritygroup>



=head2 B<REQUIRED> Description => Str

A description for the security group.



=head2 Tags => ArrayRef[L<Paws::RedShift::Tag>]

A list of tag instances.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateClusterSecurityGroup in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

