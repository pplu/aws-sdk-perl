package Paws::ECS::Ulimit;
  use Moose;
  has hardLimit => (is => 'ro', isa => 'Int', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
  has softLimit => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Ulimit

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Ulimit object:

  $service_obj->Method(Att1 => { hardLimit => $value, ..., softLimit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Ulimit object:

  $result = $service_obj->Method(...);
  $result->Att1->hardLimit

=head1 ATTRIBUTES

=head2 B<REQUIRED> hardLimit => Int

  

The hard limit for the ulimit type.










=head2 B<REQUIRED> name => Str

  

The C<type> of the C<ulimit>.










=head2 B<REQUIRED> softLimit => Int

  

The soft limit for the ulimit type.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

