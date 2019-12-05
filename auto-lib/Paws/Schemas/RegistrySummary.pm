package Paws::Schemas::RegistrySummary;
  use Moose;
  has RegistryArn => (is => 'ro', isa => 'Str');
  has RegistryName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Schemas::Tags', request_name => 'tags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::RegistrySummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Schemas::RegistrySummary object:

  $service_obj->Method(Att1 => { RegistryArn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Schemas::RegistrySummary object:

  $result = $service_obj->Method(...);
  $result->Att1->RegistryArn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 RegistryArn => Str

  The ARN of the registry.


=head2 RegistryName => Str

  The name of the registry.


=head2 Tags => L<Paws::Schemas::Tags>

  Tags associated with the registry.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

