package Paws::EC2::FpgaImageAttribute;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has FpgaImageId => (is => 'ro', isa => 'Str', request_name => 'fpgaImageId', traits => ['NameInRequest']);
  has LoadPermissions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LoadPermission]', request_name => 'loadPermissions', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', request_name => 'productCodes', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::FpgaImageAttribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::FpgaImageAttribute object:

  $service_obj->Method(Att1 => { Description => $value, ..., ProductCodes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::FpgaImageAttribute object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the AFI.


=head2 FpgaImageId => Str

  The ID of the AFI.


=head2 LoadPermissions => ArrayRef[L<Paws::EC2::LoadPermission>]

  One or more load permissions.


=head2 Name => Str

  The name of the AFI.


=head2 ProductCodes => ArrayRef[L<Paws::EC2::ProductCode>]

  One or more product codes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
