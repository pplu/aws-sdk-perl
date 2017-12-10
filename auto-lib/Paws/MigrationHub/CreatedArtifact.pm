package Paws::MigrationHub::CreatedArtifact;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::CreatedArtifact

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MigrationHub::CreatedArtifact object:

  $service_obj->Method(Att1 => { Description => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MigrationHub::CreatedArtifact object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

An ARN of the AWS cloud resource target receiving the migration (e.g.,
AMI, EC2 instance, RDS instance, etc.).

=head1 ATTRIBUTES


=head2 Description => Str

  A description that can be free-form text to record additional detail
about the artifact for clarity or for later reference.


=head2 B<REQUIRED> Name => Str

  An ARN that uniquely identifies the result of a migration task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

