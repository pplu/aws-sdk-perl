package Paws::GameLift::Alias;
  use Moose;
  has AliasId => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RoutingStrategy => (is => 'ro', isa => 'Paws::GameLift::RoutingStrategy');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::Alias

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::Alias object:

  $service_obj->Method(Att1 => { AliasId => $value, ..., RoutingStrategy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::Alias object:

  $result = $service_obj->Method(...);
  $result->Att1->AliasId

=head1 DESCRIPTION

Properties describing a fleet alias.

=head1 ATTRIBUTES


=head2 AliasId => Str

  Unique identifier for a fleet alias.


=head2 CreationTime => Str

  Time stamp indicating when this data object was created. Format is a
number expressed in Unix time as milliseconds (ex: "1469498468.057".


=head2 Description => Str

  Human-readable description of an alias.


=head2 LastUpdatedTime => Str

  Time stamp indicating when this data object was last modified. Format
is a number expressed in Unix time as milliseconds (ex:
"1469498468.057".


=head2 Name => Str

  Descriptive label associated with an alias. Alias names do not need to
be unique.


=head2 RoutingStrategy => L<Paws::GameLift::RoutingStrategy>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

