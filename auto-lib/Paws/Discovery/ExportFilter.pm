package Paws::Discovery::ExportFilter;
  use Moose;
  has Condition => (is => 'ro', isa => 'Str', request_name => 'condition', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'values', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ExportFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::ExportFilter object:

  $service_obj->Method(Att1 => { Condition => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::ExportFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Condition

=head1 DESCRIPTION

Used to select which agent's data is to be exported. A single agent ID
may be selected for export using the StartExportTask
(http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_StartExportTask.html)
action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Condition => Str

  Supported condition: C<EQUALS>


=head2 B<REQUIRED> Name => Str

  A single C<ExportFilter> name. Supported filters: C<agentId>.


=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

  A single C<agentId> for a Discovery Agent. An C<agentId> can be found
using the DescribeAgents
(http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeExportTasks.html)
action. Typically an ADS C<agentId> is in the form
C<o-0123456789abcdef0>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

