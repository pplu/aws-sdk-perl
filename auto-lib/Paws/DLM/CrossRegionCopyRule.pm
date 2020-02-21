package Paws::DLM::CrossRegionCopyRule;
  use Moose;
  has CmkArn => (is => 'ro', isa => 'Str');
  has CopyTags => (is => 'ro', isa => 'Bool');
  has Encrypted => (is => 'ro', isa => 'Bool', required => 1);
  has RetainRule => (is => 'ro', isa => 'Paws::DLM::CrossRegionCopyRetainRule');
  has TargetRegion => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::CrossRegionCopyRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DLM::CrossRegionCopyRule object:

  $service_obj->Method(Att1 => { CmkArn => $value, ..., TargetRegion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DLM::CrossRegionCopyRule object:

  $result = $service_obj->Method(...);
  $result->Att1->CmkArn

=head1 DESCRIPTION

Specifies a rule for cross-Region snapshot copies.

=head1 ATTRIBUTES


=head2 CmkArn => Str

  The Amazon Resource Name (ARN) of the AWS KMS customer master key (CMK)
to use for EBS encryption. If this parameter is not specified, your AWS
managed CMK for EBS is used.


=head2 CopyTags => Bool

  Copy all user-defined tags from the source snapshot to the copied
snapshot.


=head2 B<REQUIRED> Encrypted => Bool

  To encrypt a copy of an unencrypted snapshot if encryption by default
is not enabled, enable encryption using this parameter. Copies of
encrypted snapshots are encrypted, even if this parameter is false or
if encryption by default is not enabled.


=head2 RetainRule => L<Paws::DLM::CrossRegionCopyRetainRule>

  The retention rule.


=head2 B<REQUIRED> TargetRegion => Str

  The target Region.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

