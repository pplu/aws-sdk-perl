package Paws::RDS::UpgradeTarget;
  use Moose;
  has AutoUpgrade => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has IsMajorVersionUpgrade => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::UpgradeTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::UpgradeTarget object:

  $service_obj->Method(Att1 => { AutoUpgrade => $value, ..., IsMajorVersionUpgrade => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::UpgradeTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoUpgrade

=head1 DESCRIPTION

The version of the database engine that a DB instance can be upgraded
to.

=head1 ATTRIBUTES


=head2 AutoUpgrade => Bool

  A value that indicates whether the target version is applied to any
source DB instances that have AutoMinorVersionUpgrade set to true.


=head2 Description => Str

  The version of the database engine that a DB instance can be upgraded
to.


=head2 Engine => Str

  The name of the upgrade target database engine.


=head2 EngineVersion => Str

  The version number of the upgrade target database engine.


=head2 IsMajorVersionUpgrade => Bool

  A value that indicates whether a database engine is upgraded to a major
version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

