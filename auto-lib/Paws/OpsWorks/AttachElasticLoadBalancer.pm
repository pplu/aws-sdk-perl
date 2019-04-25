
package Paws::OpsWorks::AttachElasticLoadBalancer;
  use Moose;
  has ElasticLoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachElasticLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::AttachElasticLoadBalancer - Arguments for method AttachElasticLoadBalancer on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachElasticLoadBalancer on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method AttachElasticLoadBalancer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachElasticLoadBalancer.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    $opsworks->AttachElasticLoadBalancer(
      ElasticLoadBalancerName => 'MyString',
      LayerId                 => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/AttachElasticLoadBalancer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ElasticLoadBalancerName => Str

The Elastic Load Balancing instance's name.



=head2 B<REQUIRED> LayerId => Str

The ID of the layer to which the Elastic Load Balancing instance is to
be attached.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachElasticLoadBalancer in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

