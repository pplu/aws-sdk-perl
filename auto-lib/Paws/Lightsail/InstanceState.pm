package Paws::Lightsail::InstanceState;
  use Moose;
  has Code => (is => 'ro', isa => 'Int', request_name => 'code', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::InstanceState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::InstanceState object:

  $service_obj->Method(Att1 => { Code => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::InstanceState object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

Describes the virtual private server (or I<instance>) status.

=head1 ATTRIBUTES


=head2 Code => Int

  The status code for the instance.


=head2 Name => Str

  The state of the instance (e.g., C<running> or C<pending>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

