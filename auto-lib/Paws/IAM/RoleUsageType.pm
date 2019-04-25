package Paws::IAM::RoleUsageType;
  use Moose;
  has Region => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::RoleUsageType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::RoleUsageType object:

  $service_obj->Method(Att1 => { Region => $value, ..., Resources => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::RoleUsageType object:

  $result = $service_obj->Method(...);
  $result->Att1->Region

=head1 DESCRIPTION

An object that contains details about how a service-linked role is
used, if that information is returned by the service.

This data type is used as a response element in the
GetServiceLinkedRoleDeletionStatus operation.

=head1 ATTRIBUTES


=head2 Region => Str

  The name of the region where the service-linked role is being used.


=head2 Resources => ArrayRef[Str|Undef]

  The name of the resource that is using the service-linked role.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

