package Paws::RedShift::ClusterParameterStatus;
  use Moose;
  has ParameterApplyErrorDescription => (is => 'ro', isa => 'Str');
  has ParameterApplyStatus => (is => 'ro', isa => 'Str');
  has ParameterName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ClusterParameterStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::ClusterParameterStatus object:

  $service_obj->Method(Att1 => { ParameterApplyErrorDescription => $value, ..., ParameterName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::ClusterParameterStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->ParameterApplyErrorDescription

=head1 DESCRIPTION

Describes the status of a parameter group.

=head1 ATTRIBUTES


=head2 ParameterApplyErrorDescription => Str

  The error that prevented the parameter from being applied to the
database.


=head2 ParameterApplyStatus => Str

  The status of the parameter that indicates whether the parameter is in
sync with the database, waiting for a cluster reboot, or encountered an
error when being applied.

The following are possible statuses and descriptions.

=over

=item *

C<in-sync>: The parameter value is in sync with the database.

=item *

C<pending-reboot>: The parameter value will be applied after the
cluster reboots.

=item *

C<applying>: The parameter value is being applied to the database.

=item *

C<invalid-parameter>: Cannot apply the parameter value because it has
an invalid value or syntax.

=item *

C<apply-deferred>: The parameter contains static property changes. The
changes are deferred until the cluster reboots.

=item *

C<apply-error>: Cannot connect to the cluster. The parameter change
will be applied after the cluster reboots.

=item *

C<unknown-error>: Cannot apply the parameter change right now. The
change will be applied after the cluster reboots.

=back



=head2 ParameterName => Str

  The name of the parameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

