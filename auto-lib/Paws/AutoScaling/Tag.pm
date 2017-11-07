package Paws::AutoScaling::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has PropagateAtLaunch => (is => 'ro', isa => 'Bool');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Describes a tag for an Auto Scaling group.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The tag key.


=head2 PropagateAtLaunch => Bool

  Determines whether the tag is added to new instances as they are
launched in the group.


=head2 ResourceId => Str

  The name of the group.


=head2 ResourceType => Str

  The type of resource. The only supported value is
C<auto-scaling-group>.


=head2 Value => Str

  The tag value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

