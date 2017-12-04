package Paws::SSM::PatchFilterGroup;
  use Moose;
  has PatchFilters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::PatchFilter]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PatchFilterGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::PatchFilterGroup object:

  $service_obj->Method(Att1 => { PatchFilters => $value, ..., PatchFilters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::PatchFilterGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->PatchFilters

=head1 DESCRIPTION

A set of patch filters, typically used for approval rules.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PatchFilters => ArrayRef[L<Paws::SSM::PatchFilter>]

  The set of patch filters that make up the group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

