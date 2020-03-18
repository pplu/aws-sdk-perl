package Paws::Cloud9::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Cloud9::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Cloud9::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Metadata that is associated with AWS resources. In particular, a
name-value pair that can be associated with an AWS Cloud9 development
environment. There are two types of tags: I<user tags> and I<system
tags>. A user tag is created by the user. A system tag is automatically
created by AWS services. A system tag is prefixed with "aws:" and
cannot be modified by the user.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The B<name> part of a tag.


=head2 B<REQUIRED> Value => Str

  The B<value> part of a tag.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Cloud9>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

