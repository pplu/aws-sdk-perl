package Paws::SecurityHub::SortCriterion;
  use Moose;
  has Field => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::SortCriterion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::SortCriterion object:

  $service_obj->Method(Att1 => { Field => $value, ..., SortOrder => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::SortCriterion object:

  $result = $service_obj->Method(...);
  $result->Att1->Field

=head1 DESCRIPTION

A collection of attributes used for sorting findings.

=head1 ATTRIBUTES


=head2 Field => Str

  The finding attribute used for sorting findings.


=head2 SortOrder => Str

  The order used for sorting findings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

