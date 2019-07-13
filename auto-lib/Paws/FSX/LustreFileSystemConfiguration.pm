package Paws::FSX::LustreFileSystemConfiguration;
  use Moose;
  has DataRepositoryConfiguration => (is => 'ro', isa => 'Paws::FSX::DataRepositoryConfiguration');
  has WeeklyMaintenanceStartTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::LustreFileSystemConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::LustreFileSystemConfiguration object:

  $service_obj->Method(Att1 => { DataRepositoryConfiguration => $value, ..., WeeklyMaintenanceStartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::LustreFileSystemConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DataRepositoryConfiguration

=head1 DESCRIPTION

The configuration for the Amazon FSx for Lustre file system.

=head1 ATTRIBUTES


=head2 DataRepositoryConfiguration => L<Paws::FSX::DataRepositoryConfiguration>

  


=head2 WeeklyMaintenanceStartTime => Str

  The UTC time that you want to begin your weekly maintenance window.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

