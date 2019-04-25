package Paws::RDS::PendingCloudwatchLogsExports;
  use Moose;
  has LogTypesToDisable => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LogTypesToEnable => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::PendingCloudwatchLogsExports

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::PendingCloudwatchLogsExports object:

  $service_obj->Method(Att1 => { LogTypesToDisable => $value, ..., LogTypesToEnable => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::PendingCloudwatchLogsExports object:

  $result = $service_obj->Method(...);
  $result->Att1->LogTypesToDisable

=head1 DESCRIPTION

A list of the log types whose configuration is still pending. In other
words, these log types are in the process of being activated or
deactivated.

=head1 ATTRIBUTES


=head2 LogTypesToDisable => ArrayRef[Str|Undef]

  Log types that are in the process of being enabled. After they are
enabled, these log types are exported to CloudWatch Logs.


=head2 LogTypesToEnable => ArrayRef[Str|Undef]

  Log types that are in the process of being deactivated. After they are
deactivated, these log types aren't exported to CloudWatch Logs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

