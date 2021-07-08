
package Paws::ElasticBeanstalk::DisassociateEnvironmentOperationsRole;
  use Moose;
  has EnvironmentName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateEnvironmentOperationsRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DisassociateEnvironmentOperationsRole - Arguments for method DisassociateEnvironmentOperationsRole on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateEnvironmentOperationsRole on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method DisassociateEnvironmentOperationsRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateEnvironmentOperationsRole.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    $elasticbeanstalk->DisassociateEnvironmentOperationsRole(
      EnvironmentName => 'MyEnvironmentName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/DisassociateEnvironmentOperationsRole>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentName => Str

The name of the environment from which to disassociate the operations
role.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateEnvironmentOperationsRole in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

