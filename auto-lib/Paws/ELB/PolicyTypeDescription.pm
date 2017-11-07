package Paws::ELB::PolicyTypeDescription;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has PolicyAttributeTypeDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::ELB::PolicyAttributeTypeDescription]');
  has PolicyTypeName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::PolicyTypeDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELB::PolicyTypeDescription object:

  $service_obj->Method(Att1 => { Description => $value, ..., PolicyTypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELB::PolicyTypeDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Information about a policy type.

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the policy type.


=head2 PolicyAttributeTypeDescriptions => ArrayRef[L<Paws::ELB::PolicyAttributeTypeDescription>]

  The description of the policy attributes associated with the policies
defined by Elastic Load Balancing.


=head2 PolicyTypeName => Str

  The name of the policy type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

