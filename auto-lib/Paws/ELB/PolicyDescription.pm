package Paws::ELB::PolicyDescription;
  use Moose;
  has PolicyAttributeDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::ELB::PolicyAttributeDescription]');
  has PolicyName => (is => 'ro', isa => 'Str');
  has PolicyTypeName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::PolicyDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELB::PolicyDescription object:

  $service_obj->Method(Att1 => { PolicyAttributeDescriptions => $value, ..., PolicyTypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELB::PolicyDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->PolicyAttributeDescriptions

=head1 DESCRIPTION

Information about a policy.

=head1 ATTRIBUTES


=head2 PolicyAttributeDescriptions => ArrayRef[L<Paws::ELB::PolicyAttributeDescription>]

  The policy attributes.


=head2 PolicyName => Str

  The name of the policy.


=head2 PolicyTypeName => Str

  The name of the policy type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

