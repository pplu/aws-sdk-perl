package Paws::EMR::BootstrapActionConfig;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ScriptBootstrapAction => (is => 'ro', isa => 'Paws::EMR::ScriptBootstrapActionConfig', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::BootstrapActionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::BootstrapActionConfig object:

  $service_obj->Method(Att1 => { Name => $value, ..., ScriptBootstrapAction => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::BootstrapActionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Configuration of a bootstrap action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the bootstrap action.


=head2 B<REQUIRED> ScriptBootstrapAction => L<Paws::EMR::ScriptBootstrapActionConfig>

  The script run by the bootstrap action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

