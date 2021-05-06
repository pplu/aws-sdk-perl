
package Paws::OpsWorks::DeregisterElasticIp;
  use Moose;
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterElasticIp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DeregisterElasticIp - Arguments for method DeregisterElasticIp on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterElasticIp on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method DeregisterElasticIp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterElasticIp.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    $opsworks->DeregisterElasticIp(
      ElasticIp => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/DeregisterElasticIp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ElasticIp => Str

The Elastic IP address.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterElasticIp in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

