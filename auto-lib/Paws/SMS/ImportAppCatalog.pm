
package Paws::SMS::ImportAppCatalog;
  use Moose;
  has RoleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportAppCatalog');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SMS::ImportAppCatalogResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::ImportAppCatalog - Arguments for method ImportAppCatalog on L<Paws::SMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportAppCatalog on the
L<AWS Server Migration Service|Paws::SMS> service. Use the attributes of this class
as arguments to method ImportAppCatalog.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportAppCatalog.

=head1 SYNOPSIS

    my $sms = Paws->service('SMS');
    my $ImportAppCatalogResponse = $sms->ImportAppCatalog(
      RoleName => 'MyRoleName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms/ImportAppCatalog>

=head1 ATTRIBUTES


=head2 RoleName => Str

The name of the service role. If you omit this parameter, we create a
service-linked role for AWS Migration Hub in your account. Otherwise,
the role that you provide must have the policy and trust policy
(https://docs.aws.amazon.com/migrationhub/latest/ug/new-customer-setup.html#sms-managed)
described in the I<AWS Migration Hub User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportAppCatalog in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

