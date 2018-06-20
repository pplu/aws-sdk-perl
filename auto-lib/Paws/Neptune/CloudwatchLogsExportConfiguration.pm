package Paws::Neptune::CloudwatchLogsExportConfiguration;
  use Moose;
  has DisableLogTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableLogTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::CloudwatchLogsExportConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Neptune::CloudwatchLogsExportConfiguration object:

  $service_obj->Method(Att1 => { DisableLogTypes => $value, ..., EnableLogTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Neptune::CloudwatchLogsExportConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DisableLogTypes

=head1 DESCRIPTION

The configuration setting for the log types to be enabled for export to
CloudWatch Logs for a specific DB instance or DB cluster.

=head1 ATTRIBUTES


=head2 DisableLogTypes => ArrayRef[Str|Undef]

  The list of log types to disable.


=head2 EnableLogTypes => ArrayRef[Str|Undef]

  The list of log types to enable.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

