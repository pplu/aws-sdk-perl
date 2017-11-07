package Paws::OpsWorks::AgentVersion;
  use Moose;
  has ConfigurationManager => (is => 'ro', isa => 'Paws::OpsWorks::StackConfigurationManager');
  has Version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::AgentVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::AgentVersion object:

  $service_obj->Method(Att1 => { ConfigurationManager => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::AgentVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigurationManager

=head1 DESCRIPTION

Describes an agent version.

=head1 ATTRIBUTES


=head2 ConfigurationManager => L<Paws::OpsWorks::StackConfigurationManager>

  The configuration manager.


=head2 Version => Str

  The agent version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

