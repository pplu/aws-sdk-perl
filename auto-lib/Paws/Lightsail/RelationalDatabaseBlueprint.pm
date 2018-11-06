package Paws::Lightsail::RelationalDatabaseBlueprint;
  use Moose;
  has BlueprintId => (is => 'ro', isa => 'Str', request_name => 'blueprintId', traits => ['NameInRequest']);
  has Engine => (is => 'ro', isa => 'Str', request_name => 'engine', traits => ['NameInRequest']);
  has EngineDescription => (is => 'ro', isa => 'Str', request_name => 'engineDescription', traits => ['NameInRequest']);
  has EngineVersion => (is => 'ro', isa => 'Str', request_name => 'engineVersion', traits => ['NameInRequest']);
  has EngineVersionDescription => (is => 'ro', isa => 'Str', request_name => 'engineVersionDescription', traits => ['NameInRequest']);
  has IsEngineDefault => (is => 'ro', isa => 'Bool', request_name => 'isEngineDefault', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::RelationalDatabaseBlueprint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::RelationalDatabaseBlueprint object:

  $service_obj->Method(Att1 => { BlueprintId => $value, ..., IsEngineDefault => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::RelationalDatabaseBlueprint object:

  $result = $service_obj->Method(...);
  $result->Att1->BlueprintId

=head1 DESCRIPTION

Describes a database image, or blueprint. A blueprint describes the
major engine version of a database.

=head1 ATTRIBUTES


=head2 BlueprintId => Str

  The ID for the database blueprint.


=head2 Engine => Str

  The database software of the database blueprint (for example,
C<MySQL>).


=head2 EngineDescription => Str

  The description of the database engine for the database blueprint.


=head2 EngineVersion => Str

  The database engine version for the database blueprint (for example,
C<5.7.23>).


=head2 EngineVersionDescription => Str

  The description of the database engine version for the database
blueprint.


=head2 IsEngineDefault => Bool

  A Boolean value indicating whether the engine version is the default
for the database blueprint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

