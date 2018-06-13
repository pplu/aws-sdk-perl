
package Paws::OpsWorks::DescribeElasticIps;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has Ips => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeElasticIps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribeElasticIpsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeElasticIps - Arguments for method DescribeElasticIps on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeElasticIps on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method DescribeElasticIps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeElasticIps.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $DescribeElasticIpsResult = $opsworks->DescribeElasticIps(
      InstanceId => 'MyString',             # OPTIONAL
      Ips        => [ 'MyString', ... ],    # OPTIONAL
      StackId    => 'MyString',             # OPTIONAL
    );

    # Results:
    my $ElasticIps = $DescribeElasticIpsResult->ElasticIps;

    # Returns a L<Paws::OpsWorks::DescribeElasticIpsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/DescribeElasticIps>

=head1 ATTRIBUTES


=head2 InstanceId => Str

The instance ID. If you include this parameter, C<DescribeElasticIps>
returns a description of the Elastic IP addresses associated with the
specified instance.



=head2 Ips => ArrayRef[Str|Undef]

An array of Elastic IP addresses to be described. If you include this
parameter, C<DescribeElasticIps> returns a description of the specified
Elastic IP addresses. Otherwise, it returns a description of every
Elastic IP address.



=head2 StackId => Str

A stack ID. If you include this parameter, C<DescribeElasticIps>
returns a description of the Elastic IP addresses that are registered
with the specified stack.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeElasticIps in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

