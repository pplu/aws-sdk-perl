
package Paws::EC2::DescribeSecurityGroupReferences;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has GroupId => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSecurityGroupReferences');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeSecurityGroupReferencesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSecurityGroupReferences - Arguments for method DescribeSecurityGroupReferences on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSecurityGroupReferences on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DescribeSecurityGroupReferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSecurityGroupReferences.

As an example:

  $service_obj->DescribeSecurityGroupReferences(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the operation,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
DryRunOperation. Otherwise, it is UnauthorizedOperation.



=head2 B<REQUIRED> GroupId => ArrayRef[Str|Undef]

One or more security group IDs in your account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSecurityGroupReferences in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

