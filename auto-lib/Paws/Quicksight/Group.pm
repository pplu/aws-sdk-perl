package Paws::Quicksight::Group;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::Group

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::Group object:

  $service_obj->Method(Att1 => { Arn => $value, ..., GroupName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::Group object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A I<group> in Amazon QuickSight consists of a set of users. You can use
groups to make it easier to manage access and security. Currently, an
Amazon QuickSight subscription can't contain more than 500 Amazon
QuickSight groups.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) for the group.


=head2 Description => Str

  The group description.


=head2 GroupName => Str

  The name of the group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

