package Paws::DMS::ResourcePendingMaintenanceActions;
  use Moose;
  has PendingMaintenanceActionDetails => (is => 'ro', isa => 'ArrayRef[Paws::DMS::PendingMaintenanceAction]');
  has ResourceIdentifier => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ResourcePendingMaintenanceActions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::ResourcePendingMaintenanceActions object:

  $service_obj->Method(Att1 => { PendingMaintenanceActionDetails => $value, ..., ResourceIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::ResourcePendingMaintenanceActions object:

  $result = $service_obj->Method(...);
  $result->Att1->PendingMaintenanceActionDetails

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 PendingMaintenanceActionDetails => ArrayRef[L<Paws::DMS::PendingMaintenanceAction>]

  Detailed information about the pending maintenance action.


=head2 ResourceIdentifier => Str

  The Amazon Resource Name (ARN) of the DMS resource that the pending
maintenance action applies to. For information about creating an ARN,
see Constructing an Amazon Resource Name (ARN) for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Introduction.AWS.ARN.html)
in the DMS documentation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

