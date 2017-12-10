package Paws::SSM::Activation;
  use Moose;
  has ActivationId => (is => 'ro', isa => 'Str');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has DefaultInstanceName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ExpirationDate => (is => 'ro', isa => 'Str');
  has Expired => (is => 'ro', isa => 'Bool');
  has IamRole => (is => 'ro', isa => 'Str');
  has RegistrationLimit => (is => 'ro', isa => 'Int');
  has RegistrationsCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::Activation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::Activation object:

  $service_obj->Method(Att1 => { ActivationId => $value, ..., RegistrationsCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::Activation object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivationId

=head1 DESCRIPTION

An activation registers one or more on-premises servers or virtual
machines (VMs) with AWS so that you can configure those servers or VMs
using Run Command. A server or VM that has been registered with AWS is
called a managed instance.

=head1 ATTRIBUTES


=head2 ActivationId => Str

  The ID created by Systems Manager when you submitted the activation.


=head2 CreatedDate => Str

  The date the activation was created.


=head2 DefaultInstanceName => Str

  A name for the managed instance when it is created.


=head2 Description => Str

  A user defined description of the activation.


=head2 ExpirationDate => Str

  The date when this activation can no longer be used to register managed
instances.


=head2 Expired => Bool

  Whether or not the activation is expired.


=head2 IamRole => Str

  The Amazon Identity and Access Management (IAM) role to assign to the
managed instance.


=head2 RegistrationLimit => Int

  The maximum number of managed instances that can be registered using
this activation.


=head2 RegistrationsCount => Int

  The number of managed instances already registered with this
activation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

