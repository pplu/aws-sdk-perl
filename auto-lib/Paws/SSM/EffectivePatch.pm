package Paws::SSM::EffectivePatch;
  use Moose;
  has Patch => (is => 'ro', isa => 'Paws::SSM::Patch');
  has PatchStatus => (is => 'ro', isa => 'Paws::SSM::PatchStatus');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::EffectivePatch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::EffectivePatch object:

  $service_obj->Method(Att1 => { Patch => $value, ..., PatchStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::EffectivePatch object:

  $result = $service_obj->Method(...);
  $result->Att1->Patch

=head1 DESCRIPTION

The EffectivePatch structure defines metadata about a patch along with
the approval state of the patch in a particular patch baseline. The
approval state includes information about whether the patch is
currently approved, due to be approved by a rule, explicitly approved,
or explicitly rejected and the date the patch was or will be approved.

=head1 ATTRIBUTES


=head2 Patch => L<Paws::SSM::Patch>

  Provides metadata for a patch, including information such as the KB ID,
severity, classification and a URL for where more information can be
obtained about the patch.


=head2 PatchStatus => L<Paws::SSM::PatchStatus>

  The status of the patch in a patch baseline. This includes information
about whether the patch is currently approved, due to be approved by a
rule, explicitly approved, or explicitly rejected and the date the
patch was or will be approved.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

