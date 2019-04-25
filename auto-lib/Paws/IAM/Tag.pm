package Paws::IAM::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A structure that represents user-provided metadata that can be
associated with a resource such as an IAM user or role. For more
information about tagging, see Tagging IAM Identities
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
I<IAM User Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The key name that can be used to look up or retrieve the associated
value. For example, C<Department> or C<Cost Center> are common choices.


=head2 B<REQUIRED> Value => Str

  The value associated with this tag. For example, tags with a key name
of C<Department> could have values such as C<Human Resources>,
C<Accounting>, and C<Support>. Tags with a key name of C<Cost Center>
might have values that consist of the number associated with the
different cost centers in your company. Typically, many resources have
tags with the same key name but with different values.

AWS always interprets the tag C<Value> as a single string. If you need
to store an array, you can store comma-separated values in the string.
However, you must interpret the value in your code.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

