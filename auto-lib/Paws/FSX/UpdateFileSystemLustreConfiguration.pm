package Paws::FSX::UpdateFileSystemLustreConfiguration;
  use Moose;
  has WeeklyMaintenanceStartTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::UpdateFileSystemLustreConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::UpdateFileSystemLustreConfiguration object:

  $service_obj->Method(Att1 => { WeeklyMaintenanceStartTime => $value, ..., WeeklyMaintenanceStartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::UpdateFileSystemLustreConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->WeeklyMaintenanceStartTime

=head1 DESCRIPTION

The configuration object for Amazon FSx for Lustre file systems used in
the C<UpdateFileSystem> operation.

=head1 ATTRIBUTES


=head2 WeeklyMaintenanceStartTime => Str

  The preferred time to perform weekly maintenance, in the UTC time zone.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

