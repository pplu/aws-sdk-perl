package Paws::SSM::PatchGroupPatchBaselineMapping;
  use Moose;
  has BaselineIdentity => (is => 'ro', isa => 'Paws::SSM::PatchBaselineIdentity');
  has PatchGroup => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PatchGroupPatchBaselineMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::PatchGroupPatchBaselineMapping object:

  $service_obj->Method(Att1 => { BaselineIdentity => $value, ..., PatchGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::PatchGroupPatchBaselineMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->BaselineIdentity

=head1 DESCRIPTION

The mapping between a patch group and the patch baseline the patch
group is registered with.

=head1 ATTRIBUTES


=head2 BaselineIdentity => L<Paws::SSM::PatchBaselineIdentity>

  The patch baseline the patch group is registered with.


=head2 PatchGroup => Str

  The name of the patch group registered with the patch baseline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

