package Paws::Backup::ProtectedResource;
  use Moose;
  has LastBackupTime => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ProtectedResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::ProtectedResource object:

  $service_obj->Method(Att1 => { LastBackupTime => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::ProtectedResource object:

  $result = $service_obj->Method(...);
  $result->Att1->LastBackupTime

=head1 DESCRIPTION

A structure that contains information about a backed-up resource.

=head1 ATTRIBUTES


=head2 LastBackupTime => Str

  The date and time a resource was last backed up, in Unix format and
Coordinated Universal Time (UTC). The value of C<LastBackupTime> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 ResourceArn => Str

  An Amazon Resource Name (ARN) that uniquely identifies a resource. The
format of the ARN depends on the resource type.


=head2 ResourceType => Str

  The type of AWS resource; for example, an Amazon Elastic Block Store
(Amazon EBS) volume or an Amazon Relational Database Service (Amazon
RDS) database.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

