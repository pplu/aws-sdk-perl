package Paws::Discovery::Filter;
  use Moose;
  has Condition => (is => 'ro', isa => 'Str', request_name => 'condition', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'values', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::Filter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::Filter object:

  $service_obj->Method(Att1 => { Condition => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::Filter object:

  $result = $service_obj->Method(...);
  $result->Att1->Condition

=head1 DESCRIPTION

A filter that can use conditional operators.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Condition => Str

  A conditional operator. The following operators are valid: EQUALS,
NOT_EQUALS, CONTAINS, NOT_CONTAINS. If you specify multiple filters,
the system utilizes all filters as though concatenated by I<AND>. If
you specify multiple values for a particular filter, the system
differentiates the values using I<OR>. Calling either
I<DescribeConfigurations> or I<ListConfigurations> returns attributes
of matching configuration items.


=head2 B<REQUIRED> Name => Str

  The name of the filter. The following filter names are allowed for
C<SERVER> configuration items.

B<Server>

=over

=item *

C<server.hostName>

=item *

C<server.osName>

=item *

C<server.osVersion>

=item *

C<server.configurationid>

=item *

C<server.agentid>

=back

The name of the filter. The following filter names are allowed for
C<PROCESS> configuration items.

B<Process>

=over

=item *

C<process.configurationid>

=item *

C<process.name>

=item *

C<process.commandLine>

=item *

C<server.configurationid>

=item *

C<server.hostName>

=item *

C<server.osName>

=item *

C<server.osVersion>

=item *

C<server.agentId>

=back

The name of the filter. The following filter names are allowed for
C<CONNECTION> configuration items.

B<Connection>

=over

=item *

C<connection.sourceIp>

=item *

C<connection.destinationIp>

=item *

C<connection.destinationPort>

=item *

C<sourceProcess.configurationId>

=item *

C<sourceProcess.name>

=item *

C<sourceProcess.commandLine>

=item *

C<destinationProcess.configurationId>

=item *

C<destinationProcess.name>

=item *

C<destinationProcess.commandLine>

=item *

C<sourceServer.configurationId>

=item *

C<sourceServer.hostName>

=item *

C<sourceServer.osName>

=item *

C<sourceServer.osVersion>

=item *

C<sourceServer.agentId>

=item *

C<destinationServer.configurationId>

=item *

C<destinationServer.hostName>

=item *

C<destinationServer.osName>

=item *

C<destinationServer.osVersion>

=item *

C<destinationServer.agentId>

=back



=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

  A string value that you want to filter on. For example, if you choose
the C<destinationServer.osVersion> filter name, you could specify
C<Ubuntu> for the value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

