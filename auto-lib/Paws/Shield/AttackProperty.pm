package Paws::Shield::AttackProperty;
  use Moose;
  has AttackLayer => (is => 'ro', isa => 'Str');
  has AttackPropertyIdentifier => (is => 'ro', isa => 'Str');
  has TopContributors => (is => 'ro', isa => 'ArrayRef[Paws::Shield::Contributor]');
  has Total => (is => 'ro', isa => 'Int');
  has Unit => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::AttackProperty

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Shield::AttackProperty object:

  $service_obj->Method(Att1 => { AttackLayer => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Shield::AttackProperty object:

  $result = $service_obj->Method(...);
  $result->Att1->AttackLayer

=head1 DESCRIPTION

Details of the described attack.

=head1 ATTRIBUTES


=head2 AttackLayer => Str

  The type of DDoS event that was observed. C<NETWORK> indicates layer 3
and layer 4 events and C<APPLICATION> indicates layer 7 events.


=head2 AttackPropertyIdentifier => Str

  Defines the DDoS attack property information that is provided.


=head2 TopContributors => ArrayRef[L<Paws::Shield::Contributor>]

  The array of Contributor objects that includes the top five
contributors to an attack.


=head2 Total => Int

  The total contributions made to this attack by all contributors, not
just the five listed in the C<TopContributors> list.


=head2 Unit => Str

  The unit of the C<Value> of the contributions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

