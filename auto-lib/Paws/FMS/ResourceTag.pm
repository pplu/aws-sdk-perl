package Paws::FMS::ResourceTag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::ResourceTag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::ResourceTag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::ResourceTag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

The resource tags that AWS Firewall Manager uses to determine if a
particular resource should be included or excluded from protection by
the AWS Firewall Manager policy. Tags enable you to categorize your AWS
resources in different ways, for example, by purpose, owner, or
environment. Each tag consists of a key and an optional value, both of
which you define. Tags are combined with an "OR." That is, if you add
more than one tag, if any of the tags matches, the resource is
considered a match for the include or exclude. Working with Tag Editor
(https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/tag-editor.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The resource tag key.


=head2 Value => Str

  The resource tag value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

