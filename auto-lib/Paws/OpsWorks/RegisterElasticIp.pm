
package Paws::OpsWorks::RegisterElasticIp;
  use Moose;
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterElasticIp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::RegisterElasticIpResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::RegisterElasticIp - Arguments for method RegisterElasticIp on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterElasticIp on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method RegisterElasticIp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterElasticIp.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $RegisterElasticIpResult = $opsworks->RegisterElasticIp(
      ElasticIp => 'MyString',
      StackId   => 'MyString',

    );

    # Results:
    my $ElasticIp = $RegisterElasticIpResult->ElasticIp;

    # Returns a L<Paws::OpsWorks::RegisterElasticIpResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/RegisterElasticIp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ElasticIp => Str

The Elastic IP address.



=head2 B<REQUIRED> StackId => Str

The stack ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterElasticIp in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

