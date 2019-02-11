package Paws::IAM::EntityInfo;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::EntityInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::EntityInfo object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::EntityInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains details about the specified entity (user or role).

This data type is an element of the EntityDetails object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  


=head2 B<REQUIRED> Id => Str

  The identifier of the entity (user or role).


=head2 B<REQUIRED> Name => Str

  The name of the entity (user or role).


=head2 Path => Str

  The path to the entity (user or role). For more information about
paths, see IAM Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 B<REQUIRED> Type => Str

  The type of entity (user or role).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

