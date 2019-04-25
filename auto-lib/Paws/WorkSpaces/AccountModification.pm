package Paws::WorkSpaces::AccountModification;
  use Moose;
  has DedicatedTenancyManagementCidrRange => (is => 'ro', isa => 'Str');
  has DedicatedTenancySupport => (is => 'ro', isa => 'Str');
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has ModificationState => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::AccountModification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::AccountModification object:

  $service_obj->Method(Att1 => { DedicatedTenancyManagementCidrRange => $value, ..., StartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::AccountModification object:

  $result = $service_obj->Method(...);
  $result->Att1->DedicatedTenancyManagementCidrRange

=head1 DESCRIPTION

Describes a modification to the configuration of bring your own license
(BYOL) for the specified account.

=head1 ATTRIBUTES


=head2 DedicatedTenancyManagementCidrRange => Str

  The IP address range, specified as an IPv4 CIDR block, for the
management network interface used for the account.


=head2 DedicatedTenancySupport => Str

  The status of BYOL (whether BYOL is being enabled or disabled).


=head2 ErrorCode => Str

  The error code that is returned if the configuration of BYOL cannot be
modified.


=head2 ErrorMessage => Str

  The text of the error message that is returned if the configuration of
BYOL cannot be modified.


=head2 ModificationState => Str

  The state of the modification to the configuration of BYOL.


=head2 StartTime => Str

  The timestamp when the modification of the BYOL configuration was
started.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

