package Paws::STS::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::STS::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::STS::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

You can pass custom key-value pair attributes when you assume a role or
federate a user. These are called session tags. You can then use the
session tags to control access to resources. For more information, see
Tagging AWS STS Sessions
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html)
in the I<IAM User Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The key for a session tag.

You can pass up to 50 session tags. The plain text session tag keys
canE<rsquo>t exceed 128 characters. For these and additional limits,
see IAM and STS Character Limits
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length)
in the I<IAM User Guide>.


=head2 B<REQUIRED> Value => Str

  The value for a session tag.

You can pass up to 50 session tags. The plain text session tag values
canE<rsquo>t exceed 256 characters. For these and additional limits,
see IAM and STS Character Limits
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length)
in the I<IAM User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::STS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

