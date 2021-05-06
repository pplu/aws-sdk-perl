
package Paws::DAX::UpdateSubnetGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has SubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSubnetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DAX::UpdateSubnetGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::UpdateSubnetGroup - Arguments for method UpdateSubnetGroup on L<Paws::DAX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSubnetGroup on the
L<Amazon DynamoDB Accelerator (DAX)|Paws::DAX> service. Use the attributes of this class
as arguments to method UpdateSubnetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSubnetGroup.

=head1 SYNOPSIS

    my $dax = Paws->service('DAX');
    my $UpdateSubnetGroupResponse = $dax->UpdateSubnetGroup(
      SubnetGroupName => 'MyString',
      Description     => 'MyString',             # OPTIONAL
      SubnetIds       => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $SubnetGroup = $UpdateSubnetGroupResponse->SubnetGroup;

    # Returns a L<Paws::DAX::UpdateSubnetGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dax/UpdateSubnetGroup>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the subnet group.



=head2 B<REQUIRED> SubnetGroupName => Str

The name of the subnet group.



=head2 SubnetIds => ArrayRef[Str|Undef]

A list of subnet IDs in the subnet group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSubnetGroup in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

