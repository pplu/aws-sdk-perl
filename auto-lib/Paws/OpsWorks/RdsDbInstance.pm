package Paws::OpsWorks::RdsDbInstance;
  use Moose;
  has Address => (is => 'ro', isa => 'Str');
  has DbInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DbPassword => (is => 'ro', isa => 'Str');
  has DbUser => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has MissingOnRds => (is => 'ro', isa => 'Bool');
  has RdsDbInstanceArn => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::RdsDbInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::RdsDbInstance object:

  $service_obj->Method(Att1 => { Address => $value, ..., StackId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::RdsDbInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->Address

=head1 DESCRIPTION

Describes an Amazon RDS instance.

=head1 ATTRIBUTES


=head2 Address => Str

  The instance's address.


=head2 DbInstanceIdentifier => Str

  The DB instance identifier.


=head2 DbPassword => Str

  AWS OpsWorks Stacks returns C<*****FILTERED*****> instead of the actual
value.


=head2 DbUser => Str

  The master user name.


=head2 Engine => Str

  The instance's database engine.


=head2 MissingOnRds => Bool

  Set to C<true> if AWS OpsWorks Stacks is unable to discover the Amazon
RDS instance. AWS OpsWorks Stacks attempts to discover the instance
only once. If this value is set to C<true>, you must deregister the
instance, and then register it again.


=head2 RdsDbInstanceArn => Str

  The instance's ARN.


=head2 Region => Str

  The instance's AWS region.


=head2 StackId => Str

  The ID of the stack with which the instance is registered.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

